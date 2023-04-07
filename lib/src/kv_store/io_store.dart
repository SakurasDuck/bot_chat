import 'dart:io';
import 'package:chat_ui/src/kv_store/shared_perferences_kvstore.dart';
import 'package:get_it/get_it.dart';

import 'base_store.dart';

import 'i_kvstore.dart';
import 'mmkv_kvstore.dart';

IKvStore createKvstore(String kvStoreName) {
  late final IKvStore kvStore;
  if (Platform.isAndroid || Platform.isIOS) {
    kvStore = MMKVKVStore(kvStoreName);
  } else {
    kvStore = SharedPreferencesKvstore(kvStoreName);
  }
  return kvStore;
}
