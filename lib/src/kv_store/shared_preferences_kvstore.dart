import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/lock.dart';
import 'i_kvstore.dart';

class SharedPreferencesKvstore extends IKvStore {
  SharedPreferencesKvstore(this.instanceName);

  @override
  final String instanceName;

  final Lock _lock = Lock();

  SharedPreferences? _instance;
  Future<SharedPreferences> get _prefs async {
    if (_lock.isUsing()) {
      await _lock.waitDone();
      return _instance!;
    } else {
      return _lock.mutex<SharedPreferences>(() async {
        //初始化MMKV
        _instance = await SharedPreferences.getInstance();
        return _instance!;
      });
    }
  }

  ///因为SharedPreferences 实例初始化时没有提供可供分区的参数,id分区直接加在key里
  String _getCacheKey(String key) => '$instanceName&$key';

  @override
  Future<bool> containsKey(String key) async {
    return (await _prefs).containsKey(_getCacheKey(key));
  }

  @override
  Future<void> remove(String key) async {
    debugPrint('remove $key');
    await (await _prefs).remove(_getCacheKey(key));
  }

  @override
  Future<void> batchRemove(List<String> keys) async {
    debugPrint('batchRemove ${keys.toString()}');
    await Future.wait(keys.map((key) async {
      await (await _prefs).remove(_getCacheKey(key));
    }));
  }

  @override
  Future<void> setBool(String key, bool value) async {
    debugPrint('setBool $key $value');
    (await _prefs).setBool(_getCacheKey(key), value);
  }

  @override
  Future<bool> getBool(String key, {bool defaultValue = false}) async {
    if (await containsKey(_getCacheKey(key)) != true) return defaultValue;
    final bool value = (await _prefs).getBool(_getCacheKey(key))!;
    debugPrint('getBool $key $value');
    return value;
  }

  @override
  Future<void> setInt(String key, int value) async {
    debugPrint('setInt $key $value');
    (await _prefs).setInt(_getCacheKey(key), value);
  }

  @override
  Future<int?> getInt(String key, {int? defaultValue}) async {
    if (await containsKey(_getCacheKey(key)) != true) return defaultValue;
    final int value = (await _prefs).getInt(
      _getCacheKey(key),
    )!;
    debugPrint('getInt $key $value');
    return value;
  }

  @override
  Future<void> setDouble(String key, double value) async {
    debugPrint('setDouble $key $value');
    (await _prefs).setDouble(_getCacheKey(key), value);
  }

  @override
  Future<double?> getDouble(String key, {double? defaultValue}) async {
    if (await containsKey(_getCacheKey(key)) != true) return defaultValue;
    final double value = (await _prefs).getDouble(_getCacheKey(key))!;
    debugPrint('getDouble $key $value');
    return value;
  }

  @override
  Future<void> setString(String key, String value) async {
    debugPrint('setString $key $value');
    (await _prefs).setString(_getCacheKey(key), value);
  }

  @override
  Future<String?> getString(String key, {String? defaultValue}) async {
    final String? value = (await _prefs).getString(
      _getCacheKey(key),
    );
    debugPrint('getString $key $value');
    return value ?? defaultValue;
  }

  @override
  Future<List<String>> batchGetString(List<String> keys) async {
    final List<String?> result =
        await Future.wait<String?>(keys.map((key) => getString(key)));
    return result.where((element) => element != null).toList().cast<String>();
  }

  ///因为SharedPreferences没有提供存储Uint8List,故直接使用存List<String>
  @override
  Future<void> setUint8List(String key, Uint8List value) async {
    if (value.isNotEmpty == true) {
      debugPrint('setUInt8List $key ');
      (await _prefs).setStringList(_getCacheKey(key),
          value.map((element) => element.toString()).toList());
    }
  }

  ///因为SharedPreferences没有提供存储Uint8List,故直接使用取List<String>,然后序列化回来
  @override
  Future<Uint8List?> getUint8List(String key, {Uint8List? defaultValue}) async {
    debugPrint('getUInt8List $key ');
    final List<String>? bytes = (await _prefs).getStringList(_getCacheKey(key));
    if (bytes != null) {
      final Uint8List list =
          Uint8List.fromList(bytes.map((e) => int.tryParse(e) ?? 0).toList());
      return list;
    } else {
      return defaultValue;
    }
  }

  ///因为分区id直接存在key里的,所以取key时先按id开头取然后需要将id去除
  @override
  Future<List<String>> allKey() async {
    debugPrint('allKey');
    return (await _prefs)
        .getKeys()
        .where((element) => element.startsWith('$instanceName&'))
        .map((e) => e.replaceFirst('$instanceName&', ''))
        .toList();
  }
}
