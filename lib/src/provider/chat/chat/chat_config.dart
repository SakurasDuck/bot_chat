import 'dart:convert';

import 'package:chat_ui/src/kv_store/kvstore.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/const.dart';
import '../../../config/open_api_key/get_api_key.dart';
import '../../../http_clinet/clinet.dart';
import '../../portrait/portrait_list.dart';

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

  void toCache() {
    //写缓存
    kvStore.setString(CACHED_MODEL_NAME, state);
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

  //清除画像
  void reset() {
    state = null;
    kvStore.remove(CACHED_BOT_PORTRAIT);
  }

  void toCache() {
    //写缓存
    if (state != null) {
      kvStore.setString(CACHED_BOT_PORTRAIT, jsonEncode(state!));
    }
  }
}
