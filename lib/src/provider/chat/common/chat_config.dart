import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/const.dart';
import '../../../config/open_api_key/get_api_key.dart';
import '../../../kv_store/kvstore.dart';

part 'chat_config.g.dart';

@Riverpod(keepAlive: true)
class GetOpenAPIKey extends _$GetOpenAPIKey {
  @override
  String build() => GetIt.instance.get<GetAPIKey>().call();

  @override
  set state(String value) {
    //to reset GetIt
    GetIt.instance.unregister<GetAPIKey>();

    GetIt.instance.registerSingleton<GetAPIKey>(() => value);

    super.state = value;
  }

  void onChange(String key) {
    state = key;
  }

  void toCache() {
    //写缓存
    kvStore.setString(CACHED_OPENAI_API_KEY, state);
  }
}
