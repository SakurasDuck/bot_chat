// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Model _$ModelFromJson(Map<String, dynamic> json) {
  return _Models.fromJson(json);
}

/// @nodoc
mixin _$Model {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  String get owned_by => throw _privateConstructorUsedError;
  List<dynamic> get permission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelCopyWith<Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCopyWith<$Res> {
  factory $ModelCopyWith(Model value, $Res Function(Model) then) =
      _$ModelCopyWithImpl<$Res, Model>;
  @useResult
  $Res call(
      {String id, String object, String owned_by, List<dynamic> permission});
}

/// @nodoc
class _$ModelCopyWithImpl<$Res, $Val extends Model>
    implements $ModelCopyWith<$Res> {
  _$ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? owned_by = null,
    Object? permission = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      owned_by: null == owned_by
          ? _value.owned_by
          : owned_by // ignore: cast_nullable_to_non_nullable
              as String,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelsCopyWith<$Res> implements $ModelCopyWith<$Res> {
  factory _$$_ModelsCopyWith(_$_Models value, $Res Function(_$_Models) then) =
      __$$_ModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String object, String owned_by, List<dynamic> permission});
}

/// @nodoc
class __$$_ModelsCopyWithImpl<$Res> extends _$ModelCopyWithImpl<$Res, _$_Models>
    implements _$$_ModelsCopyWith<$Res> {
  __$$_ModelsCopyWithImpl(_$_Models _value, $Res Function(_$_Models) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? owned_by = null,
    Object? permission = null,
  }) {
    return _then(_$_Models(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      owned_by: null == owned_by
          ? _value.owned_by
          : owned_by // ignore: cast_nullable_to_non_nullable
              as String,
      permission: null == permission
          ? _value._permission
          : permission // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Models implements _Models {
  const _$_Models(
      {required this.id,
      required this.object,
      required this.owned_by,
      required final List<dynamic> permission})
      : _permission = permission;

  factory _$_Models.fromJson(Map<String, dynamic> json) =>
      _$$_ModelsFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  final String owned_by;
  final List<dynamic> _permission;
  @override
  List<dynamic> get permission {
    if (_permission is EqualUnmodifiableListView) return _permission;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permission);
  }

  @override
  String toString() {
    return 'Model(id: $id, object: $object, owned_by: $owned_by, permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Models &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.owned_by, owned_by) ||
                other.owned_by == owned_by) &&
            const DeepCollectionEquality()
                .equals(other._permission, _permission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, owned_by,
      const DeepCollectionEquality().hash(_permission));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelsCopyWith<_$_Models> get copyWith =>
      __$$_ModelsCopyWithImpl<_$_Models>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelsToJson(
      this,
    );
  }
}

abstract class _Models implements Model {
  const factory _Models(
      {required final String id,
      required final String object,
      required final String owned_by,
      required final List<dynamic> permission}) = _$_Models;

  factory _Models.fromJson(Map<String, dynamic> json) = _$_Models.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  String get owned_by;
  @override
  List<dynamic> get permission;
  @override
  @JsonKey(ignore: true)
  _$$_ModelsCopyWith<_$_Models> get copyWith =>
      throw _privateConstructorUsedError;
}
