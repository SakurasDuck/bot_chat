
import 'i_kvstore.dart';
import 'shared_perferences_kvstore.dart';

IKvStore createKvstore(String kvStoreName) => SharedPreferencesKvstore(kvStoreName);
