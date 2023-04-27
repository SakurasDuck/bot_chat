// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_gen_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageGenReqBody _$$_ImageGenReqBodyFromJson(Map<String, dynamic> json) =>
    _$_ImageGenReqBody(
      prompt: json['prompt'] as String,
      n: json['n'] as int? ?? 1,
      size: json['size'] as String? ?? '1024x1024',
      response_format: json['response_format'] as String? ?? 'url',
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$_ImageGenReqBodyToJson(_$_ImageGenReqBody instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'n': instance.n,
      'size': instance.size,
      'response_format': instance.response_format,
      'user': instance.user,
    };

_$_ImageGenRes _$$_ImageGenResFromJson(Map<String, dynamic> json) =>
    _$_ImageGenRes(
      created: json['created'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => GenImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ImageGenResToJson(_$_ImageGenRes instance) =>
    <String, dynamic>{
      'created': instance.created,
      'data': instance.data,
    };

_$_GenImage _$$_GenImageFromJson(Map<String, dynamic> json) => _$_GenImage(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_GenImageToJson(_$_GenImage instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
