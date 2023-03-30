import 'dart:convert';

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import 'package:http/http.dart';
import 'get_client_base.dart'
    if (dart.library.html) 'client_web.dart'
    if (dart.library.io) 'client_io.dart';

import 'proxys/base_proxy.dart';

export 'proxys/base_proxy.dart';
export 'proxys/res_status.dart';
export 'proxys/timeout.dart';

/// Http增强型客户端
/// [proxyProgram] 代理程序数组
class HttpEnhancedClient extends BaseClient {
  HttpEnhancedClient(this.proxyProgram);
  final List<ProxyProgram> proxyProgram;

  @override
  Future<Response> delete(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    Response? response;
    debugPrint('发起http请求 方法类型:delete  url:$url');

    try {
      response = await proxy(
          () => super
              .delete(url, headers: headers, body: body, encoding: encoding),
          headers,
          HttpType.delete);
      return response;
    } catch (e) {
      debugPrint('http请求错误: 方法类型:delete  url:$url');
      debugPrint('httpHeaders: $headers');
      debugPrint('Http状态码错误! statusCode:${response?.statusCode}');
      debugPrint('Http响应头:${response?.headers}');
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<Response> get(url, {Map<String, String>? headers}) async {
    Response? response;
    debugPrint('发起http请求 方法类型:get  url:$url');

    try {
      response = await proxy(
          () => super.get(url, headers: headers), headers, HttpType.get);
      return response;
    } catch (e) {
      debugPrint('http请求错误: 方法类型:get  url:$url');
      debugPrint('httpHeaders: $headers');
      debugPrint('Http状态码错误! statusCode:${response?.statusCode}');
      debugPrint('Http响应头:${response?.headers}');
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<Response> post(url,
      {Map<String, String>? headers, body, Encoding? encoding}) async {
    Response? response;

    debugPrint('发起http请求 方法类型:post  url:$url');
    try {
      response = await proxy(
          () =>
              super.post(url, headers: headers, body: body, encoding: encoding),
          headers,
          HttpType.post);
      return response;
    } catch (e) {
      debugPrint('http请求错误: 方法类型:post  url:$url');
      debugPrint('httpHeaders: $headers');
      debugPrint('Http状态码错误! statusCode:${response?.statusCode}');
      debugPrint('Http响应头:${response?.headers}');
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<Response> put(url,
      {Map<String, String>? headers, body, Encoding? encoding}) async {
    Response? response;
    debugPrint('发起http请求 方法类型:put  url:$url');
    try {
      response = await proxy(
          () =>
              super.put(url, headers: headers, body: body, encoding: encoding),
          headers,
          HttpType.put);
      return response;
    } catch (e) {
      debugPrint('http请求错误: 方法类型:put  url:$url');
      debugPrint('httpHeaders: $headers');
      debugPrint('Http状态码错误! statusCode:${response?.statusCode}');
      debugPrint('Http响应头:${response?.headers}');
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<Response> patch(url,
      {Map<String, String>? headers, body, Encoding? encoding}) async {
    Response? response;
    debugPrint('发起http请求 方法类型:patch  url:$url');

    try {
      response = await proxy(
          () => super
              .patch(url, headers: headers, body: body, encoding: encoding),
          headers,
          HttpType.patch);
      return response;
    } catch (e) {
      debugPrint('http请求错误: 方法类型:patch  url:$url');
      debugPrint('httpHeaders: $headers');
      debugPrint('Http状态码错误! statusCode:${response?.statusCode}');
      debugPrint('Http响应头:${response?.headers}');
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<Response> proxy(Future<Response> Function() callback,
      Map<String, String>? headers, HttpType? type) async {
    if (proxyProgram.isNotEmpty) {
      for (var program in proxyProgram) {
        final parent = callback;
        callback = () => program(parent, headers, type);
      }
    }
    return callback();
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    return GetIt.instance.get<Client>(instanceName: 'baseClient').send(request);
  }

  static void instance(List<ProxyProgram> proxyPrograms) {
    GetIt.instance.registerLazySingleton<Client>(() => createClient(),
        instanceName: 'baseClient');

    GetIt.instance
        .registerLazySingleton<Client>(() => HttpEnhancedClient(proxyPrograms));
  }
}
