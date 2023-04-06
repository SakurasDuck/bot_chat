import 'package:http/http.dart';

BaseClient createClient(String? ioProxy) => throw UnsupportedError(
    'Cannot create a client without dart:html or dart:io.');
