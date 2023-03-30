import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../config/role.dart';
import '../services/chat_api.dart';
import '../services/chat_state.dart';
import '../services/message.dart';

part 'chat.g.dart';

@riverpod
Future<ChatResponse> getChat(GetChatRef ref, String model, String content,
    {Role role = Role.user}) {
  return GetIt.instance
      .get<ChatAPI>()
      .chat(model: model, content: content, role: role);
}

@Riverpod(dependencies: [getChat, getUuid])
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

  Future<void> sendMessage(String question) async {
    //创建本地消息
    final msgId = ref.read<Uuid>(getUuidProvider).v1();
    final userMsg = ChatState(
        createTimeStamp: DateTime.now().millisecondsSinceEpoch,
        fromMe: SendMessage(
            id: msgId,
            message: ReqMessage(content: question, role: Role.user.toString()),
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

    // //发送消息
    // SendMessageStatus requestStatus = SendMessageStatus.ERROR;
    // final response = await ref
    //     .read(GetChatProvider('gpt-3.5-turbo', question).future)
    //     .then((value) {
    //   requestStatus = SendMessageStatus.SENT;
    //   return value;
    // }).catchError((e) {
    //   requestStatus = SendMessageStatus.ERROR;
    //   throw e;
    // }).whenComplete(() {
    //   //修改本地消息状态, 并刷新 UI
    //   modify((state) {
    //     final index =
    //         state.indexWhere((element) => element.fromMe?.id == msgId);
    //     state[index] = state[index].copyWith(
    //         fromMe: state[index].fromMe!.copyWith(status: requestStatus));
    //     return state;
    //   });
    // });

    // // //添加机器人回复消息,并刷新 UI
    // modify((state) => state
    //   ..add(ChatState(
    //       createTimeStamp: DateTime.now().millisecondsSinceEpoch,
    //       fromBot: response)));
  }
}

@Riverpod(keepAlive: true)
Uuid getUuid(GetUuidRef ref) => const Uuid();

@riverpod
TextEditingController getController(GetControllerRef ref) =>
    TextEditingController();
