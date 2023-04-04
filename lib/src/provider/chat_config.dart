import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/const.dart';
import 'portrait_list.dart';

part 'chat_config.g.dart';

///聊天模型状态
@Riverpod(keepAlive: true)
class ChatModel extends _$ChatModel {
  @override
  String build() => DEFAULT_CHAT_MODEL;

  //修改语言模型
  void onChange(String model) {
    state = model;
  }
}

///聊天画像状态
@Riverpod(keepAlive: true)
class BotPortrait extends _$BotPortrait {
  @override
  Portrait? build() => null;

  //修改画像
  bool onChange(Portrait portrait) {
    if (state == portrait) {
      return false;
    } else {
      state = portrait;
      return true;
    }
  }
}
