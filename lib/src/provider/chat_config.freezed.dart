// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SystemMsg _$SystemMsgFromJson(Map<String, dynamic> json) {
  return _SystemMsg.fromJson(json);
}

/// @nodoc
mixin _$SystemMsg {
//消息
  List<String> get msgs => throw _privateConstructorUsedError; //画像名称
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemMsgCopyWith<SystemMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemMsgCopyWith<$Res> {
  factory $SystemMsgCopyWith(SystemMsg value, $Res Function(SystemMsg) then) =
      _$SystemMsgCopyWithImpl<$Res, SystemMsg>;
  @useResult
  $Res call({List<String> msgs, String name});
}

/// @nodoc
class _$SystemMsgCopyWithImpl<$Res, $Val extends SystemMsg>
    implements $SystemMsgCopyWith<$Res> {
  _$SystemMsgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgs = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      msgs: null == msgs
          ? _value.msgs
          : msgs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SystemMsgCopyWith<$Res> implements $SystemMsgCopyWith<$Res> {
  factory _$$_SystemMsgCopyWith(
          _$_SystemMsg value, $Res Function(_$_SystemMsg) then) =
      __$$_SystemMsgCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> msgs, String name});
}

/// @nodoc
class __$$_SystemMsgCopyWithImpl<$Res>
    extends _$SystemMsgCopyWithImpl<$Res, _$_SystemMsg>
    implements _$$_SystemMsgCopyWith<$Res> {
  __$$_SystemMsgCopyWithImpl(
      _$_SystemMsg _value, $Res Function(_$_SystemMsg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgs = null,
    Object? name = null,
  }) {
    return _then(_$_SystemMsg(
      msgs: null == msgs
          ? _value._msgs
          : msgs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SystemMsg implements _SystemMsg {
  const _$_SystemMsg({required final List<String> msgs, required this.name})
      : _msgs = msgs;

  factory _$_SystemMsg.fromJson(Map<String, dynamic> json) =>
      _$$_SystemMsgFromJson(json);

//消息
  final List<String> _msgs;
//消息
  @override
  List<String> get msgs {
    if (_msgs is EqualUnmodifiableListView) return _msgs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_msgs);
  }

//画像名称
  @override
  final String name;

  @override
  String toString() {
    return 'SystemMsg(msgs: $msgs, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SystemMsg &&
            const DeepCollectionEquality().equals(other._msgs, _msgs) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_msgs), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SystemMsgCopyWith<_$_SystemMsg> get copyWith =>
      __$$_SystemMsgCopyWithImpl<_$_SystemMsg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SystemMsgToJson(
      this,
    );
  }
}

abstract class _SystemMsg implements SystemMsg {
  const factory _SystemMsg(
      {required final List<String> msgs,
      required final String name}) = _$_SystemMsg;

  factory _SystemMsg.fromJson(Map<String, dynamic> json) =
      _$_SystemMsg.fromJson;

  @override //消息
  List<String> get msgs;
  @override //画像名称
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SystemMsgCopyWith<_$_SystemMsg> get copyWith =>
      throw _privateConstructorUsedError;
}
