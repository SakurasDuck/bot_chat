import 'dart:async';

import 'package:chat_ui/src/models/message.dart';
import 'package:flutter/material.dart';

import '../../config/types.dart';
import 'common/chat_state.dart';

///聊天动作接口
/// [T]  发送消息类型
/// [K]  接收消息类型
abstract class IChatActionProvider<T extends UpMessageStatus, K, U> {
  // 发送消息
  Future<bool> sendMessage(MessageStore store, Message<T, K> upMsg);

  // 加载历史消息
  Future<List<Message<T, K>>> loadingHistoryMessage();

  // 清除当前消息
  void resetChat();

  //转换消息
  // [U] 消息内容类型
  Message<T, K> convertUpMsg(
      {required String msgId, required int now, required U upContent});

  final StreamController<Message<T, K>> _messageStreamController =
      StreamController<Message<T, K>>.broadcast();

  //收到消息通知流
  void notifier(Message<T, K> msg) {
    _messageStreamController.sink.add(msg);
  }

  //消息监听
  Cancel listenMessage(RecMessageCallback<Message<T,K>> callback) {
    return _messageStreamController.stream.listen((event) {
      callback(event);
    }).cancel;
  }
}

///聊天UI接口
/// [T]  发送消息类型
/// [K]  接收消息类型
abstract class IChatUIProvider<T, K, U> {
  // 构建上行消息item UI
  Widget buildUpMessageItem(
    T upMsg,
  );

  // 构建下行消息item UI
  Widget buildDownMessageItem(
    K downMsg,
  );

  // 构建消息输入框UI
  Widget buildMessageInput(SendMessageFunc<U> sendMessage);

  // 构建抽屉菜单UI
  List<Widget> buildDrawerMenus();
}

typedef SendMessageFunc<T> = Future<void> Function(T msg);

typedef RecMessageCallback<T> = void Function(T msg);
