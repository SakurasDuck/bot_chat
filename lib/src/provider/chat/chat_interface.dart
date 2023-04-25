import 'package:chat_ui/src/models/message.dart';
import 'package:flutter/material.dart';

///聊天动作接口
/// [T]  发送消息类型
/// [K]  接收消息类型
abstract class IChatActionProvider<T extends UpMessageStatus, K> {
  // 发送消息
  Future<bool> sendMessage(Message<T,K> upMsg);

  // // 收到消息
  // void getMessage(K downMsg);

  // 加载历史消息
  Future<List<Message<T,K>>> loadingHistoryMessage();

  // 清除当前消息
  void clearCurrentMessages();

  Message<T,K> convertUpMsg({required String msgId,required int now,dynamic upContent});
}

///聊天UI接口
/// [T]  发送消息类型
/// [K]  接收消息类型
abstract class IChatUIProvider<T, K> {
  // 构建上行消息item UI
  Widget buildUpMessageItem(
    T upMsg,
  );

  // 构建下行消息item UI
  Widget buildDownMessageItem(
    K downMsg,
  );

  // 构建消息输入框UI
  Widget buildMessageInput();

  // 构建抽屉菜单UI
  List<Widget> buildDrawerMenus();
}
