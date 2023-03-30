import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'base_proxy.dart';

Future<Response> checkStatusCodeProgram(Future<Response> Function() callback,
    Map<String, String>? headers, HttpType? type) async {
  final Response response = await callback();
  if (response.statusCode >= 400) {
    debugPrint('Http状态码错误! statusCode:${response.statusCode}');
    debugPrint('Http响应头:${response.headers}');
    debugPrint('Http请求url:${response.request?.url}');
    debugPrint('Http请求头:${response.request?.headers}');
  }

  return response;
}
