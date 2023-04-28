import 'package:get_it/get_it.dart';

import 'api_key_base.dart'
    if (dart.library.html) 'api_key_web.dart'
    if (dart.library.io) 'api_key_io.dart';

typedef GetAPIKey = String Function();

void initKey() {
  GetIt.instance.registerSingleton<GetAPIKey>(() => OPENAI_API_KEY);
}


