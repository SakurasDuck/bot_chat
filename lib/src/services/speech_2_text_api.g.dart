// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speech_2_text_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Speech2TextReqBody _$$_Speech2TextReqBodyFromJson(
        Map<String, dynamic> json) =>
    _$_Speech2TextReqBody(
      file: json['file'] as String,
      model: json['model'] as String,
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0,
      prompt: json['prompt'] as String?,
      response_format: json['response_format'] as String? ?? 'json',
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$_Speech2TextReqBodyToJson(
        _$_Speech2TextReqBody instance) =>
    <String, dynamic>{
      'file': instance.file,
      'model': instance.model,
      'temperature': instance.temperature,
      'prompt': instance.prompt,
      'response_format': instance.response_format,
      'language': instance.language,
    };

_$_Speech2TextRes _$$_Speech2TextResFromJson(Map<String, dynamic> json) =>
    _$_Speech2TextRes(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_Speech2TextResToJson(_$_Speech2TextRes instance) =>
    <String, dynamic>{
      'text': instance.text,
    };
