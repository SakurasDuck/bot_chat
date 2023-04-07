import 'dart:convert';

import 'package:chat_ui/src/provider/chat_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/const.dart';
import '../kv_store/kvstore.dart';
import 'portrait_list.dart';

part 'splash_load.g.dart';

@riverpod
Future<void> onLoad(OnLoadRef ref) async {
  GetIt.instance.registerLazySingletonAsync<bool>(() async {
    //加载缓存
    await Future.wait([
      _getCacheOpenAIAPIKey(ref),
      _getCacheProxy(ref),
      _getCacheModel(ref),
      _getCachePortrait(ref),
      //最低也要延迟1s
      Future.delayed(const Duration(seconds: 1))
    ]);

    //暂时延迟1秒,然后跳转到聊天界面
    ;
    return true;
  }, instanceName: _instanceName);

  await GetIt.instance.getAsync<bool>(instanceName: _instanceName);
  return;
}

//通过get_it去判断是否成功初始化
Future<bool> get isInited async =>
    GetIt.instance.isRegistered<bool>(instanceName: _instanceName) &&
    (await GetIt.instance.getAsync<bool>(instanceName: _instanceName));

const String _instanceName = 'isInited';

//从缓存加载OpenAIAPIKey
Future<void> _getCacheOpenAIAPIKey(Ref ref) async {
  final openAIAPIKey = await kvStore.getString(CACHED_OPENAI_API_KEY);
  if (openAIAPIKey != null) {
    ref.read(getOpenAPIKeyProvider.notifier).onChange(openAIAPIKey);
  }
}

//从缓存加载代理地址
Future<void> _getCacheProxy(Ref ref) async {
  final proxy = await kvStore.getString(CACHED_PROXY_PATH);
  if (proxy != null) {
    ref.read(proxyConfigProvider.notifier).onChange(proxy);
    
  }
}

//从缓存加载语言模型
Future<void> _getCacheModel(Ref ref) async {
  final model = await kvStore.getString(CACHED_MODEL_NAME);
  if (model != null) {
    ref.read(chatModelProvider.notifier).onChange(model);
  }
}

//从缓存加载画像
Future<void> _getCachePortrait(Ref ref) async {
  final portrait = await kvStore.getString(CACHED_BOT_PORTRAIT);
  if (portrait != null) {
    ref
        .read(botPortraitProvider.notifier)
        .onChange(Portrait.fromJson(jsonDecode(portrait)));
  }
}
