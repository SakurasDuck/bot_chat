import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import '../const.dart';
import 'api_key_base.dart';

String? get OPENAI_API_KEY {
  const defineKey =  String.fromEnvironment(ENVKEY);
  if (defineKey.isNotEmpty) {
    return defineKey;
  }
  final key = Platform.environment[ENVKEY];
  return key;
}
