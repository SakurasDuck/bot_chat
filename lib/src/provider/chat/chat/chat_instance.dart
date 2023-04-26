import 'dart:convert';

import 'package:flutter/material.dart';
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
import '../../../ui/components/chat_builder/chat/text_input_builder.dart';
import '../chat_interface.dart';
import '../common/chat_state.dart';
import 'chat_config.dart';

class ChatActionsInstance
    extends IChatActionProvider<UpMessage, DownMessage, String> {
  @override
  void resetChat() {}

  @override
  Future<List<Message<UpMessage, DownMessage>>> loadingHistoryMessage() async {
    final cache = await kvStore.getString(CACHED_MSG_LIST);
    if (cache == null) {
      return [];
    } else {
      final List<Message<UpMessage, DownMessage>> historyMsgs =
          (jsonDecode(cache) as List<dynamic>)
              .map<Message<UpMessage, DownMessage>>((e) => Message.fromJson(
                  e,
                  (e) => UpMessage.fromJson(e! as Map<String, dynamic>),
                  (e) => DownMessage.fromJson(e! as Map<String, dynamic>)))
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
}

class ChatUIsInstance extends IChatUIProvider<UpMessage, DownMessage, String> {
  @override
  List<Widget> buildDrawerMenus() {
    return <Widget>[];
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
}

void init() {
  GetIt.instance
      .registerLazySingleton<IChatActionProvider>(() => ChatActionsInstance());
  GetIt.instance
      .registerLazySingleton<IChatUIProvider>(() => ChatUIsInstance());
}
