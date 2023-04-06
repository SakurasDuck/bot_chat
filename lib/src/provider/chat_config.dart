import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/const.dart';
import '../config/open_api_key/get_api_key.dart';
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

///设置代理
@riverpod
class ProxyConfig extends _$ProxyConfig {
  @override
  String? build() => null;

  //修改代理
  void onChange(String proxy) {
    state = proxy;
  }
}

@riverpod
class GetOpenAPIKey extends _$GetOpenAPIKey {
  @override
  String build() => GetIt.instance.get<GetAPIKey>().call();

  @override
  set state(String value) {
    //to reset GetIt
    GetIt.instance.unregister<GetAPIKey>();

    GetIt.instance.registerSingleton<GetAPIKey>(() => value);

    super.state = value;
  }

  void onChange(String key) {
    state = key;
  }
}
