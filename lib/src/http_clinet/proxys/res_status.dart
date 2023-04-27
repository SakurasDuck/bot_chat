import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../config/api_execption.dart';
import '../../config/global_ref.dart';
import '../../provider/chat/common/chat_config.dart';
import 'base_proxy.dart';

Future<Response> checkStatusCodeProgram(Future<Response> Function() callback,
    Map<String, String>? headers, HttpType? type) async {
  final Response response = await callback();
  if (response.statusCode == 401) {
    final keyProvider = globalPC.read(getOpenAPIKeyProvider.notifier);
    keyProvider.onChange('');
    keyProvider.toCache();
    throw ApiException.withInner(
        401, '身份验证失败,请检查OPENAI API Key是否正确', response.body, StackTrace.current);
  } else if (response.statusCode == 502) {
    throw ApiException(502, '连接失败,请检查代理等网络是否正常');
  } else if (response.statusCode >= 400) {
    debugPrint('Http状态码错误! statusCode:${response.statusCode}');
    debugPrint('Http响应头:${response.headers}');
    debugPrint('Http请求url:${response.request?.url}');
    debugPrint('Http请求头:${response.request?.headers}');
    throw ApiException.withInner(
        response.statusCode, '请求错误', response.body, StackTrace.current);
  }
  return response;
}
