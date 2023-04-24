import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../services/apis.dart';
import '../chat/chat/chat_config.dart';

part 'model_list.g.dart';

@riverpod
class ModelListEffect extends _$ModelListEffect {
  @override
  String build() => ref.read(chatModelProvider);

  String get getState => state;

  //修改语言模型
  void onChange(String model) {
    state = model;
  }

  //保存
  void onSave() {
    ref.read(chatModelProvider.notifier)
      ..onChange(state)
      ..toCache();
  }
}

@Riverpod(dependencies: [ChatModel, ModelListEffect])
bool modelCanSave(ModelCanSaveRef ref) {
  return ref.watch(modelListEffectProvider) != ref.watch(chatModelProvider);
}

@riverpod
class ModelListState extends _$ModelListState {
  @override
  List<Model> build() => <Model>[];

  @override
  bool updateShouldNotify(List<Model> previous, List<Model> next) {
    return true;
  }

  void _modify(List<Model> Function(List<Model> state) setState) {
    state = setState(super.state);
  }

  List<Model> get getModels => state;

  //刷新
  Future<void> onRefresh() async {
    final models = await GetIt.instance.get<AiModelAPI>().list();
    _modify((state) => state
      ..clear()
      ..addAll(models));
  }
}
