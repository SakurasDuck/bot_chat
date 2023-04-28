import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mmkv/mmkv.dart';

import '../config/lock.dart';
import 'i_kvstore.dart';

class MMKVKVStore extends IKvStore {
  @override
  final String? instanceName;

  MMKVKVStore(this.instanceName);

  Lock _lock = Lock();

  MMKV? _instance;

  Future<MMKV> get _mmkv async {
    if (_instance != null) {
      return _instance!;
    }
    if (_lock.isUsing()) {
      await _lock.waitDone();
      return _instance!;
    } else {
      return _lock.mutex<MMKV>(() async {
        //初始化MMKV
        final String mmkvPath = await MMKV.initialize();
        debugPrint('MMKV for flutter with rootDir = $mmkvPath');
        _instance = MMKV(instanceName ?? 'mmkv');
        return _instance!;
      });
    }
  }

  @override
  Future<void> remove(String key) async {
    debugPrint('remove $key');
    return (await _mmkv).removeValue(key);
  }

  @override
  Future<void> batchRemove(List<String> keys) async {
    debugPrint('batchRemove ${keys.toString()}');

    return (await _mmkv).removeValues(keys);
  }

  @override
  Future<void> setBool(String key, bool value) async {
    debugPrint('setBool $key $value');
    (await _mmkv).encodeBool(key, value);
  }

  @override
  Future<bool> getBool(String key, {bool defaultValue = false}) async {
    if (await containsKey(key) != true) return defaultValue;
    final bool value = (await _mmkv).decodeBool(key);
    debugPrint('getBool $key $value');
    return value;
  }

  @override
  Future<void> setInt(String key, int value) async {
    debugPrint('setInt $key $value');
    (await _mmkv).encodeInt(key, value);
  }

  @override
  Future<int?> getInt(String key, {int? defaultValue}) async {
    if (await containsKey(key) != true) return defaultValue;
    final int value = (await _mmkv).decodeInt(
      key,
    );
    debugPrint('getInt $key $value');
    return value;
  }

  @override
  Future<void> setDouble(String key, double value) async {
    debugPrint('setDouble $key $value');
    (await _mmkv).encodeDouble(key, value);
  }

  @override
  Future<double?> getDouble(String key, {double? defaultValue}) async {
    if (await containsKey(key) != true) return defaultValue;
    final double value = (await _mmkv).decodeDouble(key);
    debugPrint('getDouble $key $value');
    return value;
  }

  @override
  Future<void> setString(String key, String value) async {
    debugPrint('setString $key $value');
    (await _mmkv).encodeString(key, value);
  }

  @override
  Future<String?> getString(String key, {String? defaultValue}) async {
    final String? value = (await _mmkv).decodeString(
      key,
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

  @override
  Future<void> setUint8List(String key, Uint8List value) async {
    if (value.isNotEmpty == true) {
      debugPrint('setUInt8List $key ');
      final MMBuffer buffer = MMBuffer.fromList(value)!;
      (await _mmkv).encodeBytes(key, buffer);
      buffer.destroy();
    }
  }

  @override
  Future<Uint8List?> getUint8List(String key, {Uint8List? defaultValue}) async {
    debugPrint('getUInt8List $key ');

    final MMBuffer? bytes = (await _mmkv).decodeBytes(key);
    if (bytes != null) {
      //使用takeList不要使用asList
      final Uint8List? list = bytes.takeList();
      return list ?? defaultValue;
    } else {
      return defaultValue;
    }
  }

  @override
  Future<List<String>> allKey() async {
    debugPrint('allKey');
    return (await _mmkv).allKeys;
  }

  @override
  Future<bool> containsKey(String key) async {
    return (await _mmkv).containsKey(key);
  }
}
