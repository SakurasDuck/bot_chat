import 'dart:io';

import 'package:http/http.dart';
import 'package:http/io_client.dart';


import 'get_client_base.dart';

BaseClient createClient() {
   final client = HttpClient();
    //设置代理
    client.findProxy = (uri) => 'PROXY 127.0.0.1:1081';
    return IOClient(client);
}