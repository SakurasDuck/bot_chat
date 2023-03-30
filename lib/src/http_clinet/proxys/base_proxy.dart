import 'package:http/http.dart';

typedef ProxyProgram = Future<Response> Function(
    Future<Response> Function(), Map<String, String>? headers, HttpType? type);

enum HttpType { get, post, delete, patch, put }

typedef DoConfigHttpClient = void Function(
    List<ProxyProgram> proxyProgram, List<Info> configList, String basePath,
    {required String proxyUrl, required String protocol});

class Info {
  dynamic target;
  int port;
  bool enableProxy;

  Info(this.target, this.port, {this.enableProxy = false});
}
