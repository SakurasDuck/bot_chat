import 'dart:typed_data';

/// Kv存储的接口类
/// 存储值,已经绑定过前缀,前缀存储时按照冒号分隔
abstract class IKvStore {
  /// 某个键是否包含某个值
  Future<bool> containsKey(String key);

  String? get instanceName;

  /// 删除某个键
  Future<void> remove(String key);

  Future<void> batchRemove(List<String> keys);

  Future<void> setBool(String key, bool value);

  Future<bool> getBool(String key, {bool defaultValue=false});

  Future<void> setInt(String key, int value);

  Future<int?> getInt(String key, {int? defaultValue});

  Future<void> setDouble(String key, double value);

  Future<double?> getDouble(String key, {double? defaultValue});

  Future<void> setString(String key, String value);

  Future<String?> getString(String key, {String? defaultValue});

  Future<List<String>> batchGetString(List<String> keys);

  Future<List<String>> allKey();

  Future<void> setUint8List(String key, Uint8List value);

  Future<Uint8List?> getUint8List(String key, {Uint8List? defaultValue});
}
