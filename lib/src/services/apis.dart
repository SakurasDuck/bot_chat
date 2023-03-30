import 'package:chat_ui/src/services/chat_api.dart';
import 'package:get_it/get_it.dart';

import '../config/const.dart';
import 'ai_model_api.dart';

export 'ai_model_api.dart';
export 'model.dart';

void apisInstance() {
  GetIt.instance.registerLazySingleton<AiModelAPI>(() => const AiModelAPI(BASE_HOST));
  GetIt.instance.registerLazySingleton<ChatAPI>(() => const ChatAPI(BASE_HOST));
}

AiModelAPI get aiModelAPI => GetIt.instance.get<AiModelAPI>();
