import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/apis.dart';

part 'get_models.g.dart';

@riverpod
Future<List<Model>> getModels(GetModelsRef ref) {
  return GetIt.instance.get<AiModelAPI>().list();
}
