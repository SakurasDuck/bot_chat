import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import '../provider/chat/common/chat_config.dart';

part 'speech_2_text_api.freezed.dart';
part 'speech_2_text_api.g.dart';

class Speech2TextApi {
  const Speech2TextApi(this.host);

  static const String _path = '/v1/audio/transcriptions';

  final String host;

  Future<Speech2TextRes> getSpeech2Text(String audioPath) async {
    final client = GetIt.instance.get<Client>();
    final response = await client.post(Uri.parse('$host$_path'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${GetOpenAPIKey.openAIAPIKey}'
        },
        body: Speech2TextReqBody(
          model: 'whisper-1',
          file: audioPath,
          prompt: 'simplified Chinese',
        ));
    if (response.statusCode == 200) {
      return Speech2TextRes.fromJson(
          jsonDecode(const Utf8Decoder().convert(response.bodyBytes)));
    } else {
      throw Exception('Failed to load models');
    }
  }
}

@freezed
class Speech2TextReqBody with _$Speech2TextReqBody {
  const factory Speech2TextReqBody({
    required String file,
    required String model,
    @Default(0)
    @Assert('n>=0 && n<=1', 'n must be between 0 and 1')
        double temperature,
    String? prompt,
    @Default('json')
    @Assert('response_format=="json" ||response_format=="text" || response_format=="srt" || response_format=="verbose_json"|| response_format=="vtt"')
        String response_format,
    String? language,
  }) = _Speech2TextReqBody;

  factory Speech2TextReqBody.fromJson(Map<String, dynamic> json) =>
      _$Speech2TextReqBodyFromJson(json);
}

@freezed
class Speech2TextRes with _$Speech2TextRes {
  const factory Speech2TextRes({
    required String text,
  }) = _Speech2TextRes;

  factory Speech2TextRes.fromJson(Map<String, dynamic> json) =>
      _$Speech2TextResFromJson(json);
}
