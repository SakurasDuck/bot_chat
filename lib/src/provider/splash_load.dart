import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_load.g.dart';

@riverpod
Future<void> onLoad(OnLoadRef ref) async {
  //todo 加载历史聊天记录

  //todo 需要异步加载的内容,可以在这里处理
  //暂时延迟1秒,然后跳转到聊天界面
  return Future.delayed(const Duration(seconds: 1));
}
