import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'base_proxy.dart';

const Duration _timeout = Duration(seconds: 100);

Future<Response> timeoutProxyProgram(Future<Response> Function() callback,
    Map<String, String>? headers, HttpType? type) async {
  try {
    final Response response = await callback().timeout(_timeout);
    return response;
  } on TimeoutException catch (e, stack) {
    debugPrint('timeoutProxyProgram:e:$e,stack:$stack');
    throw TimeoutException('请求超时,请稍后重试', e.duration);
  }
}
