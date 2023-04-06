import 'package:flutter/material.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

import 'get_client_base.dart';

BaseClient createClient(String? ioProxy) {
  if (ioProxy != null) {
    debugPrint('web client not support proxy');
  }
  return BrowserClient();
}
