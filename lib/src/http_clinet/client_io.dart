import 'dart:io';

import 'package:http/http.dart';
import 'package:http/io_client.dart';

import 'get_client_base.dart';

BaseClient createClient(String? ioProxy) {
  final client = HttpClient();
  if (ioProxy?.isNotEmpty != true) {
    return IOClient(client);
  }
  //设置代理
  client.findProxy = (uri) => 'PROXY $ioProxy';
  return IOClient(client);
}
