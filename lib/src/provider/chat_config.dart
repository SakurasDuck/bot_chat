import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/const.dart';

part 'chat_config.g.dart';
part 'chat_config.freezed.dart';

@Riverpod(keepAlive: true)
class ChatModel extends _$ChatModel {
  @override
  String build() => DEFAULT_CHAT_MODEL;

  //修改语言模型
  void onChange(String model) {
    state = model;
  }
}


@riverpod
// 聊天系统画像
class ChatPortrait extends _$ChatPortrait{
  @override
  List<SystemMsg> build() => [];
} 


@freezed
class SystemMsg with _$SystemMsg {
  const factory SystemMsg({
    //消息
    required List<String> msgs,
    //画像名称
    required String name,
  }) = _SystemMsg;

  factory SystemMsg.fromJson(Map<String, dynamic> json) =>
      _$SystemMsgFromJson(json);
  
}