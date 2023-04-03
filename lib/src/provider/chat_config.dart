import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/const.dart';

part 'chat_config.g.dart';

@Riverpod(keepAlive: true)
class ChatModel extends _$ChatModel {
  @override
  String build() => DEFAULT_CHAT_MODEL;

  //修改语言模型
  void onChange(String model) {
    state = model;
  }
}


