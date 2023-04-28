import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/const.dart';
import '../config/enums.dart';
import '../kv_store/kvstore.dart';
import 'chat/chat/chat_instance.dart';
import 'chat/chat_interface.dart';
import 'chat/common/chat_config.dart';
import 'chat/image_gen/image_gen_instance.dart';

part 'splash_load.g.dart';

@riverpod
Future<void> onLoad(OnLoadRef ref) async {
  _clearRegisterServices();
  GetIt.instance.registerLazySingletonAsync<bool>(() async {
    await Future.wait([
      _registerChatServices(ref),
      _getCacheOpenAIAPIKey(ref),
      _getCacheProxy(ref),
      //最低延迟1秒,然后跳转到聊天界面
      Future.delayed(const Duration(seconds: 1))
    ]);

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

//从缓存加载对话模式
Future<void> _getCacheMode(Ref ref) async {
  final mode = await kvStore.getInt(CACHED_CHAT_MODE);
  if (mode != null) {
    ref.read(modeConfigProvider.notifier).fromCache(mode);
  }
}

//根据不同的模式注册不同的服务
Future<void> _registerChatServices(Ref ref) async {
  await _getCacheMode(ref);

  final mode = ref.read(modeConfigProvider);
  switch (mode) {
    case ChatMode.CHAT:
      await registerChatServices(ref);
      break;
    case ChatMode.IMAGE_GEN:
      await registerImageGenServices(ref);
      break;
    case ChatMode.ASR:
      break;
    default:
      throw Exception('未知的聊天模式');
  }
}

//清除之前可能注册过的服务
void _clearRegisterServices() {
  if (GetIt.instance.isRegistered<bool>(instanceName: _instanceName)) {
    GetIt.instance.unregister<bool>(instanceName: _instanceName);
  }
  if (GetIt.instance.isRegistered<IChatActionProvider>()) {
    GetIt.instance.unregister<IChatActionProvider>();
  }
  if (GetIt.instance.isRegistered<IChatUIProvider>()) {
    GetIt.instance.unregister<IChatUIProvider>();
  }
}
