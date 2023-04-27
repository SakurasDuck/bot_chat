// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_up_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatUpMessage _$$_ChatUpMessageFromJson(Map<String, dynamic> json) =>
    _$_ChatUpMessage(
      status: $enumDecode(_$SendMessageStatusEnumMap, json['status']),
      content: json['content'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$_ChatUpMessageToJson(_$_ChatUpMessage instance) =>
    <String, dynamic>{
      'status': _$SendMessageStatusEnumMap[instance.status]!,
      'content': instance.content,
      'role': _$RoleEnumMap[instance.role]!,
    };

const _$SendMessageStatusEnumMap = {
  SendMessageStatus.SENDING: 'SENDING',
  SendMessageStatus.SENT: 'SENT',
  SendMessageStatus.ERROR: 'ERROR',
};

const _$RoleEnumMap = {
  Role.SYSTEM: 'SYSTEM',
  Role.USER: 'USER',
  Role.ASSISTANT: 'ASSISTANT',
};
