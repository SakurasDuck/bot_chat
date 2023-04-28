import 'dart:convert';

import 'package:chat_ui/src/services/message.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import '../provider/chat/common/chat_config.dart';

class ChatAPI {
  const ChatAPI(this.host);
  static const String _path = '/v1/chat/completions';

  final String host;

  Future<ChatResponse> chat(
      {required String model, required List<ReqMessage> reqMessage}) async {
    final client = GetIt.instance.get<Client>();
    final response = await client.post(Uri.parse('$host$_path'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${GetOpenAPIKey.openAIAPIKey}'
        },
        body: jsonEncode(ChatRequest(model: model, messages: reqMessage)));

    if (response.statusCode == 200) {
      final ChatResponse chat = ChatResponse.fromJson(
          jsonDecode(const Utf8Decoder().convert(response.bodyBytes)));
      return chat;
    } else {
      throw Exception('Failed to chat:${response.body}}');
    }
  }
}
