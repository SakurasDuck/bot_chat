// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'up_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpMessage _$$_UpMessageFromJson(Map<String, dynamic> json) => _$_UpMessage(
      status: $enumDecode(_$SendMessageStatusEnumMap, json['status']),
      content: json['content'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$_UpMessageToJson(_$_UpMessage instance) =>
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
