import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/const.dart';
import '../kv_store/kvstore.dart';
import 'chat/chat/chat_instance.dart';
import 'chat/common/chat_config.dart';
import 'chat/image_gen/image_gen_instance.dart';

part 'splash_load.g.dart';

@riverpod
Future<void> onLoad(OnLoadRef ref) async {
  GetIt.instance.registerLazySingletonAsync<bool>(() async {
    //加载缓存
    await Future.wait([
      // registerChatServices(ref),
      registerImageGenServices(ref),
      _getCacheOpenAIAPIKey(ref),
      _getCacheProxy(ref),
      Future.delayed(const Duration(seconds: 1))
    ]);

    //暂时延迟1秒,然后跳转到聊天界面
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
