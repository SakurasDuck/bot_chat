import 'package:chat_ui/src/provider/chat/chat/chat_instance.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_load.g.dart';

@riverpod
Future<void> onLoad(OnLoadRef ref) async {
  GetIt.instance.registerLazySingletonAsync<bool>(() async {
    //加载缓存
    await Future.wait([
      registerChatServices(ref),
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
