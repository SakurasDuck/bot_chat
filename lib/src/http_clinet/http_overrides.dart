import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..findProxy = _findProxy;
  }

  String _findProxy(url) {
    //todo 获取系统代理, Android,iOS 通过Platfrom_Channel获取(https://pub.dev/packages/http_proxy), windows 通过环境变量获取,(系统代理设置可能获取方式参考(https://pub.dev/packages/proxy_manager))
    final environment = <String, String>{};
    // 从环境变量获取
    // final http = Platform.environment['HTTP_PROXY'];
    // final https = Platform.environment['HTTPS_PROXY'];
    // environment.addAll(
    //     {'https_proxy': https ?? '', 'http_proxy': http ?? '', 'no_proxy': ''});
    return HttpClient.findProxyFromEnvironment(url,
        environment: environment.isNotEmpty ? environment : null);
  }
}
