import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../../config/const.dart';
import '../../../config/enums.dart';
import '../../../kv_store/kvstore.dart';
import '../../../models/chat_msg/down_message.dart';
import '../../../models/chat_msg/up_message.dart';
import '../../../models/message.dart';
import '../../../services/chat_api.dart';
import '../../../services/message.dart' hide Message;
import '../../../ui/components/chat_builder/chat/item/down_message_builder.dart';
import '../../../ui/components/chat_builder/chat/item/up_message_builder.dart';
import '../../../ui/components/chat_builder/chat/menus/model.dart';
import '../../../ui/components/chat_builder/chat/menus/portrait.dart';
import '../../../ui/components/chat_builder/chat/text_input_builder.dart';
import '../../../ui/components/chat_builder/chat/title.dart';
import '../../../ui/widgets/common_appbar_builder.dart';
import '../../portrait/portrait_list.dart';
import '../chat_interface.dart';
import '../common/chat_config.dart';
import '../common/chat_state.dart';
import 'chat_config.dart';

class ChatActionsInstance
    extends IChatActionProvider<UpMessage, DownMessage, String> {
  @override
  void resetChat() {
    //_cacheMessage() 已经删除了缓存
  }

  @override
  Future<List<Message<UpMessage, DownMessage>>> loadingHistoryMessage() async {
    final cache = await kvStore.getString(CACHED_MSG_LIST);
    if (cache == null) {
      return [];
    } else {
      final List<Message<UpMessage, DownMessage>> historyMsgs = (jsonDecode(
              cache) as List<dynamic>)
          .map<Message<UpMessage, DownMessage>>((e) => Message.fromJson(e, (t) {
                if (t is Map<String, dynamic>) {
                  return UpMessage.fromJson(t);
                }
                throw Exception('upMessage is not Map<String,dynamic>');
              }, (k) {
                if (k is Map<String, dynamic>) {
                  return DownMessage.fromJson(k);
                }
                throw Exception('downMessage is not Map<String,dynamic>');
              }))
          .toList();
      return historyMsgs;
    }
  }

  //整合消息,转换为请求消息
  List<ReqMessage> _getReqMessage(MessageStore store) {
    final msgs = <ReqMessage>[];
    //先添加设定消息
    final botPortrait = store.ref.read(botPortraitProvider);
    if (botPortrait != null) {
      msgs.addAll(botPortrait.msgs
          .map((e) => ReqMessage(content: e, role: Role.SYSTEM.toString())));
    }

    // ignore: invalid_use_of_protected_member
    msgs.addAll(store.state
        .where((element) =>
            element.downMessage != null ||
            (element.upMessage != null &&
                element.upMessage!.status != SendMessageStatus.ERROR))
        .map<ReqMessage>((e) {
      if (e.upMessage != null) {
        return ReqMessage(
            content: (e.upMessage! as UpMessage).content,
            role: Role.USER.toString());
      } else {
        return ReqMessage(
            content: (e.downMessage! as DownMessage).content,
            role: Role.ASSISTANT.toString());
      }
    }).toList());
    return msgs;
  }

  @override
  Future<bool> sendMessage(MessageStore store, upMsg) async {
    bool result = false;

    //获取当前模型
    final model = store.ref.read(chatModelProvider);

    await GetIt.instance
        .get<ChatAPI>()
        .chat(model: model, reqMessage: _getReqMessage(store))
        .then((value) {
      result = true;
      final now = DateTime.now().millisecondsSinceEpoch;
      notifier(Message(
          msgId: value.id,
          createTime: now,
          updateTime: now,
          downMessage: DownMessage(
            content: value.choices.map((e) => e.message.content).fold(
                '',
                (previousValue, element) => previousValue.isEmpty
                    ? element
                    : '$previousValue,$element'),
          )));
    }).catchError((e) {
      result = false;
      debugPrint('发送消息失败: $e');
    });
    return result;
  }

  @override
  Message<UpMessage, DownMessage> convertUpMsg(
      {required String msgId, required int now, required String upContent}) {
    return Message(
        msgId: msgId,
        createTime: now,
        updateTime: now,
        upMessage: UpMessage(
            status: SendMessageStatus.SENDING,
            content: upContent.toString(),
            role: Role.USER));
  }

  //缓存消息
  void _cacheMessage(List<Message<UpMessage, DownMessage>> msgs) {
    if (msgs.isEmpty) {
      kvStore.remove(CACHED_MSG_LIST);
    } else {
      kvStore.setString(
          CACHED_MSG_LIST,
          jsonEncode(msgs, toEncodable: (o) {
            if (o is Message<UpMessage, DownMessage>) {
              return o.toJson((t) => t.toJson(), (k) => k.toJson());
            } else {
              return jsonEncode(o);
            }
          }));
    }
  }

  @override
  bool updateShouldNotify(List<Message> previous, List<Message> next) {
    //在这里缓存消息(这是个败笔,调用过于频繁)
    _cacheMessage(next.cast<Message<UpMessage, DownMessage>>());
    return true;
  }
}

class ChatUIsInstance extends IChatUIProvider<UpMessage, DownMessage, String> {
  @override
  List<Widget> buildDrawerMenus() {
    return <Widget>[
      const ModelMenu(),
      const PortraitMenu(),
    ];
  }

  @override
  Widget buildDownMessageItem(downMsg) {
    return DownMessageContent(
      downMsg: downMsg,
    );
  }

  @override
  Widget buildMessageInput(SendMessageFunc<String> sendMessage) {
    return TextMessageInput(
      sendMessage: (String text) {
        sendMessage(text);
      },
    );
  }

  @override
  Widget buildUpMessageItem(upMsg) {
    return UpMessageContent(
      upMsg: upMsg,
    );
  }

  @override
  Widget buildChatView(
      Widget drawerMenu, Widget chatView, Widget chatInputView) {
    return CommonChatViewBuilder(
      title: const ChatTitle(),
      drawerMenu: drawerMenu,
      chatInputView: chatInputView,
      chatView: chatView,
    );
  }
}

Future<void> registerChatServices(Ref ref) async {
  GetIt.instance
      .registerLazySingleton<IChatActionProvider>(() => ChatActionsInstance());
  GetIt.instance
      .registerLazySingleton<IChatUIProvider>(() => ChatUIsInstance());
  await Future.wait([
    _getCacheOpenAIAPIKey(ref),
    _getCacheProxy(ref),
    _getCacheModel(ref),
    _getCachePortrait(ref),
  ]);
}

//从缓存加载OpenAIAPIKey
Future<void> _getCacheOpenAIAPIKey(Ref ref) async {
  final openAIAPIKey = await kvStore.getString(CACHED_OPENAI_API_KEY);
  if (openAIAPIKey != null) {
    ref.read(getOpenAPIKeyProvider.notifier).onChange(openAIAPIKey);
  }
}

//从缓存加载代理地址
Future<void> _getCacheProxy(Ref ref) async {
  final proxy = await kvStore.getString(CACHED_PROXY_PATH);
  if (proxy != null) {
    ref.read(proxyConfigProvider.notifier).onChange(proxy);
  }
}

//从缓存加载语言模型
Future<void> _getCacheModel(Ref ref) async {
  final model = await kvStore.getString(CACHED_MODEL_NAME);
  if (model != null) {
    ref.read(chatModelProvider.notifier).onChange(model);
  }
}

//从缓存加载画像
Future<void> _getCachePortrait(Ref ref) async {
  final portrait = await kvStore.getString(CACHED_BOT_PORTRAIT);
  if (portrait != null) {
    ref
        .read(botPortraitProvider.notifier)
        .onChange(Portrait.fromJson(jsonDecode(portrait)));
  }
}
