
import 'i_kvstore.dart';
import 'shared_preferences_kvstore.dart';

IKvStore createKvstore(String kvStoreName) => SharedPreferencesKvstore(kvStoreName);
