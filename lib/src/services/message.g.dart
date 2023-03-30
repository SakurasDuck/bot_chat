// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };

_$_Choices _$$_ChoicesFromJson(Map<String, dynamic> json) => _$_Choices(
      index: json['index'] as int,
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
      finish_reason: json['finish_reason'] as String,
    );

Map<String, dynamic> _$$_ChoicesToJson(_$_Choices instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': instance.finish_reason,
    };

_$_Usage _$$_UsageFromJson(Map<String, dynamic> json) => _$_Usage(
      prompt_tokens: json['prompt_tokens'] as int,
      completion_tokens: json['completion_tokens'] as int,
      total_tokens: json['total_tokens'] as int,
    );

Map<String, dynamic> _$$_UsageToJson(_$_Usage instance) => <String, dynamic>{
      'prompt_tokens': instance.prompt_tokens,
      'completion_tokens': instance.completion_tokens,
      'total_tokens': instance.total_tokens,
    };

_$_ChatResponse _$$_ChatResponseFromJson(Map<String, dynamic> json) =>
    _$_ChatResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => Choices.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatResponseToJson(_$_ChatResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'usage': instance.usage,
      'choices': instance.choices,
    };

_$_ChatRequest _$$_ChatRequestFromJson(Map<String, dynamic> json) =>
    _$_ChatRequest(
      model: json['model'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ReqMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatRequestToJson(_$_ChatRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages,
    };

_$_ReqMessage _$$_ReqMessageFromJson(Map<String, dynamic> json) =>
    _$_ReqMessage(
      content: json['content'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$_ReqMessageToJson(_$_ReqMessage instance) =>
    <String, dynamic>{
      'content': instance.content,
      'role': instance.role,
    };
