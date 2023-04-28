import 'package:chat_ui/src/config/global_ref.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/const.dart';
import '../../../config/enums.dart';
import '../../../config/open_api_key/get_api_key.dart';
import '../../../http_clinet/clinet.dart';
import '../../../kv_store/kvstore.dart';
import '../../../routes/pages.dart';

part 'chat_config.g.dart';

@Riverpod(keepAlive: true)
class ModeConfig extends _$ModeConfig {
  @override
  ChatMode build() => ChatMode.CHAT;

  void fromCache(int mode) {
    final enumMode = ChatMode.values[mode];
    if (state != enumMode) {
      state = enumMode;
    }
  }

  void onChange(BuildContext context, ChatMode mode) {
    if (state != mode) {
      state = mode;
      _toCache();
      //重置当前页面
      context.go(Routes.SPLASH);
    }
  }

  void _toCache() {
    kvStore.setInt(CACHED_CHAT_MODE, state.index);
  }
}

@Riverpod(keepAlive: true)
class GetOpenAPIKey extends _$GetOpenAPIKey {
  @override
  String build() => GetIt.instance.get<GetAPIKey>().call();

  void onChange(String key) {
    state = key;
  }

  void toCache() {
    kvStore.setString(CACHED_OPENAI_API_KEY, state);
  }

  ///通过gloablRef获取openAIAPIKey
  static String get openAIAPIKey => globalRef.read(getOpenAPIKeyProvider);
}

///设置代理
@Riverpod(keepAlive: true)
class ProxyConfig extends _$ProxyConfig {
  @override
  String build() => '';

  void onChange(String proxy) {
    state = proxy;
    //重置代理
    HttpEnhancedClient.resetProxy(proxy);
  }

  void toCache() {
    if (state.isNotEmpty) {
      kvStore.setString(CACHED_PROXY_PATH, state);
    } else {
      kvStore.remove(CACHED_PROXY_PATH);
    }
  }
}
