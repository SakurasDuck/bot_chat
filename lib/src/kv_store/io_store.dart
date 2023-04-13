import 'dart:io';

import 'i_kvstore.dart';
import 'mmkv_kvstore.dart';
import 'shared_preferences_kvstore.dart';

IKvStore createKvstore(String kvStoreName) {
  late final IKvStore kvStore;
  if (Platform.isAndroid || Platform.isIOS) {
    kvStore = MMKVKVStore(kvStoreName);
  } else {
    kvStore = SharedPreferencesKvstore(kvStoreName);
  }
  return kvStore;
}
