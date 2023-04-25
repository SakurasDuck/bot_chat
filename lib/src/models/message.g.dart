// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message<T, K> _$$_MessageFromJson<T extends UpMessageStatus, K>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  K Function(Object? json) fromJsonK,
) =>
    _$_Message<T, K>(
      msgId: json['msgId'] as String,
      createTime: json['createTime'] as int,
      updateTime: json['updateTime'] as int,
      upMessage: _$nullableGenericFromJson(json['upMessage'], fromJsonT),
      downMessage: _$nullableGenericFromJson(json['downMessage'], fromJsonK),
    );

Map<String, dynamic> _$$_MessageToJson<T extends UpMessageStatus, K>(
  _$_Message<T, K> instance,
  Object? Function(T value) toJsonT,
  Object? Function(K value) toJsonK,
) =>
    <String, dynamic>{
      'msgId': instance.msgId,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'upMessage': _$nullableGenericToJson(instance.upMessage, toJsonT),
      'downMessage': _$nullableGenericToJson(instance.downMessage, toJsonK),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
