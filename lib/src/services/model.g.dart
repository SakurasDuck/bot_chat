// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Models _$$_ModelsFromJson(Map<String, dynamic> json) => _$_Models(
      id: json['id'] as String,
      object: json['object'] as String,
      owned_by: json['owned_by'] as String,
      permission: json['permission'] as List<dynamic>,
    );

Map<String, dynamic> _$$_ModelsToJson(_$_Models instance) => <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'owned_by': instance.owned_by,
      'permission': instance.permission,
    };
