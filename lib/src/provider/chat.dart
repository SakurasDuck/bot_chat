import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../config/role.dart';
import '../services/chat_api.dart';
import '../services/chat_state.dart';
import '../services/message.dart';
import 'chat_config.dart';
import 'scroll_ctrl.dart';

part 'chat.g.dart';

@riverpod
Future<ChatResponse> getChat(GetChatRef ref, List<ReqMessage> reqMessage) {
  //获取当前模型
  final model = ref.read(chatModelProvider);
  return GetIt.instance
      .get<ChatAPI>()
      .chat(model: model, reqMessage: reqMessage);
}

@Riverpod(dependencies: [getChat, getUuid, ChatModel])
class ChatStore extends _$ChatStore {
  @override
  List<ChatState> build() => <ChatState>[];

  @override
  bool updateShouldNotify(List<ChatState> previous, List<ChatState> next) {
    return true;
  }

  void modify(List<ChatState> Function(List<ChatState> state) setState) {
    state = setState(super.state);
  }

  ///发送消息
  ///[content] 内容
  Future<void> sendMessage(String content) async {
    //创建本地消息
    final msgId = ref.read<Uuid>(getUuidProvider).v1();
    final userMsg = ChatState(
        createTimeStamp: DateTime.now().millisecondsSinceEpoch,
        fromMe: SendMessage(
            id: msgId,
            message: ReqMessage(content: content, role: Role.user.toString()),
            status: SendMessageStatus.SENDING));
    //添加到消息列表,并刷新 UI
    modify((state) => state..add(userMsg));

    Future.delayed(const Duration(seconds: 2)).then((value) {
      modify((state) {
        final index =
            state.indexWhere((element) => element.fromMe?.id == msgId);
        state[index] = state[index].copyWith(
            fromMe:
                state[index].fromMe!.copyWith(status: SendMessageStatus.SENT));
        return state;
      });
    });
    return;

    //发送请求
    return _request(msgId);
  }

  ///重新发送消息
  Future<void> resendMEssage(String msgId) async {
    //发送请求
    return _request(msgId);
  }

  ///调用请求发送消息
  Future<void> _request(String msgId) async {
    //发送消息
    SendMessageStatus requestStatus = SendMessageStatus.ERROR;
    final response =
        await ref.read(GetChatProvider(_getReqMessage()).future).then((value) {
      requestStatus = SendMessageStatus.SENT;
      return value;
    }).catchError((e) {
      requestStatus = SendMessageStatus.ERROR;
      throw e;
    }).whenComplete(() {
      //修改本地消息状态, 并刷新 UI
      modify((state) {
        final index =
            state.indexWhere((element) => element.fromMe?.id == msgId);
        state[index] = state[index].copyWith(
            fromMe: state[index].fromMe!.copyWith(status: requestStatus));
        return state;
      });
    });

    // //添加机器人回复消息,并刷新 UI
    modify((state) => state
      ..add(ChatState(
          createTimeStamp: DateTime.now().millisecondsSinceEpoch,
          fromBot: response)));
  }

  ///清空消息列表
  void resetContent() {
    modify((state) => state..clear());
  }

  //将历史消息转换为reqMesaage
  List<ReqMessage> _getReqMessage() {
    //先添加设定消息
    return state
        .where((element) =>
            element.fromBot != null ||
            (element.fromMe != null &&
                element.fromMe?.status != SendMessageStatus.ERROR))
        .map<ReqMessage>((e) {
      if (e.fromMe != null) {
        return ReqMessage(
            content: e.fromMe!.message.content, role: Role.user.toString());
      } else {
        return ReqMessage(
            content: e.fromBot!.choices.first.message.content,
            role: Role.assistant.toString());
      }
    }).toList();
  }
}

@Riverpod(keepAlive: true)
Uuid getUuid(GetUuidRef ref) => const Uuid();

@riverpod
TextEditingController getController(GetControllerRef ref) =>
    TextEditingController();

@riverpod
TextInputFocusNode getFocusNode(GetFocusNodeRef ref) {
  final foucsNode = TextInputFocusNode();
  //监听焦点,获取焦点时,滚动到底部
  foucsNode.addListener(() {
    if (foucsNode.hasFocus) {
      ref.read(getScrollControllerProvider).jumpTo(0);
    }
  });
  return foucsNode;
}
