import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:uuid/uuid.dart';

import '../../../config/const.dart';
import '../../../config/enums.dart';
import '../../../kv_store/kvstore.dart';
import '../../../models/image_gen/image_gen_down_message.dart';
import '../../../models/image_gen/image_gen_up_message.dart';
import '../../../models/message.dart';
import '../../../services/image_gen_api.dart';
import '../../../ui/components/chat_builder/chat/text_input_builder.dart';
import '../../../ui/components/chat_builder/image_gen/item/down_message_builder.dart';
import '../../../ui/components/chat_builder/image_gen/item/up_message_builder.dart';
import '../../../ui/components/chat_builder/image_gen/title.dart';
import '../../../ui/widgets/common_appbar_builder.dart';
import '../chat_interface.dart';
import '../common/chat_state.dart';

class ImageGenActionsInstance extends IChatActionProvider<ImageGenUpMessage,
    ImageGenDownMessage, String> {
  @override
  void resetChat() {
    //_cacheMessage() 已经删除了缓存
  }

  @override
  Future<List<Message<ImageGenUpMessage, ImageGenDownMessage>>>
      loadingHistoryMessage() async {
    final cache = await kvStore.getString(CACHED_IMAGE_GEN_MSG_LIST);
    if (cache == null) {
      return [];
    } else {
      final List<Message<ImageGenUpMessage, ImageGenDownMessage>> historyMsgs =
          (jsonDecode(cache) as List<dynamic>)
              .map<Message<ImageGenUpMessage, ImageGenDownMessage>>((e) =>
                  Message.fromJson(e, (t) {
                    if (t is Map<String, dynamic>) {
                      return ImageGenUpMessage.fromJson(t);
                    }
                    throw Exception('upMessage is not Map<String,dynamic>');
                  }, (k) {
                    if (k is Map<String, dynamic>) {
                      return ImageGenDownMessage.fromJson(k);
                    }
                    throw Exception('downMessage is not Map<String,dynamic>');
                  }))
              .toList();
      return historyMsgs;
    }
  }

  @override
  Future<bool> sendMessage(MessageStore store, upMsg) async {
    bool result = false;

    await GetIt.instance
        .get<ImageGenAPI>()
        .gen(ImageGenReqBody(
            prompt: upMsg.upMessage!.content, user: upMsg.msgId))
        .then((value) {
      result = true;
      final now = DateTime.now().millisecondsSinceEpoch;
      //每一张图片都生成一条消息
      for (final item in value.data) {
        notifier(Message(
            msgId: store.ref.read<Uuid>(getUuidProvider).v1(),
            createTime: now,
            updateTime: now,
            downMessage: ImageGenDownMessage(
              url: item.url,
            )));
      }
    }).catchError((e) {
      result = false;
      debugPrint('发送消息失败: $e');
    });
    return result;
  }

  @override
  Message<ImageGenUpMessage, ImageGenDownMessage> convertUpMsg(
      {required String msgId, required int now, required String upContent}) {
    return Message(
        msgId: msgId,
        createTime: now,
        updateTime: now,
        upMessage: ImageGenUpMessage(
          status: SendMessageStatus.SENDING,
          content: upContent.toString(),
        ));
  }

  //缓存消息
  void _cacheMessage(
      List<Message<ImageGenUpMessage, ImageGenDownMessage>> msgs) {
    if (msgs.isEmpty) {
      kvStore.remove(CACHED_IMAGE_GEN_MSG_LIST);
    } else {
      kvStore.setString(
          CACHED_IMAGE_GEN_MSG_LIST,
          jsonEncode(msgs, toEncodable: (o) {
            if (o is Message<ImageGenUpMessage, ImageGenDownMessage>) {
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
    _cacheMessage(next.cast<Message<ImageGenUpMessage, ImageGenDownMessage>>());
    return true;
  }
}

class ImageGenUIsInstance
    extends IChatUIProvider<ImageGenUpMessage, ImageGenDownMessage, String> {
  @override
  List<Widget> buildDrawerMenus() {
    return <Widget>[];
  }

  @override
  Widget buildDownMessageItem(downMsg) {
    return ImageGenDownMessageContent(
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
    return ImageGenUpMessageContent(
      upMsg: upMsg,
    );
  }

  @override
  Widget buildChatView(
      Widget drawerMenu, Widget chatView, Widget chatInputView) {
    return CommonChatViewBuilder(
      title: const ImageGenTitle(),
      drawerMenu: drawerMenu,
      chatInputView: chatInputView,
      chatView: chatView,
    );
  }
}

Future<void> registerImageGenServices(Ref ref) async {
  GetIt.instance.registerLazySingleton<IChatActionProvider>(
      () => ImageGenActionsInstance());
  GetIt.instance
      .registerLazySingleton<IChatUIProvider>(() => ImageGenUIsInstance());
  await Future.wait([]);
}
