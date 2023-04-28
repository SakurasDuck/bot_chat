import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import '../provider/chat/common/chat_config.dart';
import 'model.dart';

class AiModelAPI {
  const AiModelAPI(this.host);
  static const String _path = '/v1/models';

  final String host;

  Future<List<Model>> list() async {
    final client = GetIt.instance.get<Client>();
    final response = await client.get(Uri.parse('$host$_path'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${GetOpenAPIKey.openAIAPIKey}'
    });
    if (response.statusCode == 200) {
      final List<dynamic> body = jsonDecode(response.body)['data'];
      final List<Model> models =
          body.map((dynamic item) => Model.fromJson(item)).toList();
      return models;
    } else {
      throw Exception('Failed to load models');
    }
  }
}
