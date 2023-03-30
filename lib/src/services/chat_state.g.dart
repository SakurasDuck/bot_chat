// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatState _$$_ChatStateFromJson(Map<String, dynamic> json) => _$_ChatState(
      createTimeStamp: json['createTimeStamp'] as int,
      fromMe: json['fromMe'] == null
          ? null
          : SendMessage.fromJson(json['fromMe'] as Map<String, dynamic>),
      fromBot: json['fromBot'] == null
          ? null
          : ChatResponse.fromJson(json['fromBot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatStateToJson(_$_ChatState instance) =>
    <String, dynamic>{
      'createTimeStamp': instance.createTimeStamp,
      'fromMe': instance.fromMe,
      'fromBot': instance.fromBot,
    };

_$_SendMessage _$$_SendMessageFromJson(Map<String, dynamic> json) =>
    _$_SendMessage(
      id: json['id'] as String,
      message: ReqMessage.fromJson(json['message'] as Map<String, dynamic>),
      status: $enumDecode(_$SendMessageStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_SendMessageToJson(_$_SendMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'status': _$SendMessageStatusEnumMap[instance.status]!,
    };

const _$SendMessageStatusEnumMap = {
  SendMessageStatus.SENDING: 'SENDING',
  SendMessageStatus.SENT: 'SENT',
  SendMessageStatus.ERROR: 'ERROR',
};
