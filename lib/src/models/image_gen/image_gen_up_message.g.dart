// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_gen_up_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageGenUpMessage _$$_ImageGenUpMessageFromJson(Map<String, dynamic> json) =>
    _$_ImageGenUpMessage(
      status: $enumDecode(_$SendMessageStatusEnumMap, json['status']),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_ImageGenUpMessageToJson(
        _$_ImageGenUpMessage instance) =>
    <String, dynamic>{
      'status': _$SendMessageStatusEnumMap[instance.status]!,
      'content': instance.content,
    };

const _$SendMessageStatusEnumMap = {
  SendMessageStatus.SENDING: 'SENDING',
  SendMessageStatus.SENT: 'SENT',
  SendMessageStatus.ERROR: 'ERROR',
};
