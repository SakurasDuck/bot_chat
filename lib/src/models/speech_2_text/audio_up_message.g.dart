// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_up_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AudioUpMessage _$$_AudioUpMessageFromJson(Map<String, dynamic> json) =>
    _$_AudioUpMessage(
      audioPath: json['audioPath'] as String,
      audioLength: Duration(microseconds: json['audioLength'] as int),
      status: $enumDecode(_$SendMessageStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_AudioUpMessageToJson(_$_AudioUpMessage instance) =>
    <String, dynamic>{
      'audioPath': instance.audioPath,
      'audioLength': instance.audioLength.inMicroseconds,
      'status': _$SendMessageStatusEnumMap[instance.status]!,
    };

const _$SendMessageStatusEnumMap = {
  SendMessageStatus.SENDING: 'SENDING',
  SendMessageStatus.SENT: 'SENT',
  SendMessageStatus.ERROR: 'ERROR',
};

_$_AudioModel _$$_AudioModelFromJson(Map<String, dynamic> json) =>
    _$_AudioModel(
      audioPath: json['audioPath'] as String,
      audioLength: Duration(microseconds: json['audioLength'] as int),
    );

Map<String, dynamic> _$$_AudioModelToJson(_$_AudioModel instance) =>
    <String, dynamic>{
      'audioPath': instance.audioPath,
      'audioLength': instance.audioLength.inMicroseconds,
    };
