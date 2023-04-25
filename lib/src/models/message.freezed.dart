// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message<T, K> _$MessageFromJson<T extends UpMessageStatus, K>(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
    K Function(Object?) fromJsonK) {
  return _Message<T, K>.fromJson(json, fromJsonT, fromJsonK);
}

/// @nodoc
mixin _$Message<T extends UpMessageStatus, K> {
  String get msgId => throw _privateConstructorUsedError;
  int get createTime => throw _privateConstructorUsedError;
  int get updateTime => throw _privateConstructorUsedError;
  T? get upMessage => throw _privateConstructorUsedError;
  K? get downMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(
          Object? Function(T) toJsonT, Object? Function(K) toJsonK) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<T, K, Message<T, K>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<T extends UpMessageStatus, K, $Res> {
  factory $MessageCopyWith(
          Message<T, K> value, $Res Function(Message<T, K>) then) =
      _$MessageCopyWithImpl<T, K, $Res, Message<T, K>>;
  @useResult
  $Res call(
      {String msgId,
      int createTime,
      int updateTime,
      T? upMessage,
      K? downMessage});
}

/// @nodoc
class _$MessageCopyWithImpl<T extends UpMessageStatus, K, $Res,
    $Val extends Message<T, K>> implements $MessageCopyWith<T, K, $Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgId = null,
    Object? createTime = null,
    Object? updateTime = null,
    Object? upMessage = null,
    Object? downMessage = freezed,
  }) {
    return _then(_value.copyWith(
      msgId: null == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int,
      upMessage: null == upMessage
          ? _value.upMessage
          : upMessage // ignore: cast_nullable_to_non_nullable
              as T?,
      downMessage: freezed == downMessage
          ? _value.downMessage
          : downMessage // ignore: cast_nullable_to_non_nullable
              as K?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<T extends UpMessageStatus, K, $Res>
    implements $MessageCopyWith<T, K, $Res> {
  factory _$$_MessageCopyWith(
          _$_Message<T, K> value, $Res Function(_$_Message<T, K>) then) =
      __$$_MessageCopyWithImpl<T, K, $Res>;
  @override
  @useResult
  $Res call(
      {String msgId,
      int createTime,
      int updateTime,
      T? upMessage,
      K? downMessage});
}

/// @nodoc
class __$$_MessageCopyWithImpl<T extends UpMessageStatus, K, $Res>
    extends _$MessageCopyWithImpl<T, K, $Res, _$_Message<T, K>>
    implements _$$_MessageCopyWith<T, K, $Res> {
  __$$_MessageCopyWithImpl(
      _$_Message<T, K> _value, $Res Function(_$_Message<T, K>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgId = null,
    Object? createTime = null,
    Object? updateTime = null,
    Object? upMessage = null,
    Object? downMessage = freezed,
  }) {
    return _then(_$_Message<T, K>(
      msgId: null == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int,
      upMessage: null == upMessage
          ? _value.upMessage
          : upMessage // ignore: cast_nullable_to_non_nullable
              as T?,
      downMessage: freezed == downMessage
          ? _value.downMessage
          : downMessage // ignore: cast_nullable_to_non_nullable
              as K?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_Message<T extends UpMessageStatus, K> implements _Message<T, K> {
  const _$_Message(
      {required this.msgId,
      required this.createTime,
      required this.updateTime,
      this.upMessage,
      this.downMessage})
      : assert(upMessage != null || downMessage != null, '消息不能为空');

  factory _$_Message.fromJson(Map<String, dynamic> json,
          T Function(Object?) fromJsonT, K Function(Object?) fromJsonK) =>
      _$$_MessageFromJson(json, fromJsonT, fromJsonK);

  @override
  final String msgId;
  @override
  final int createTime;
  @override
  final int updateTime;
  @override
  final T? upMessage;
  @override
  final K? downMessage;

  @override
  String toString() {
    return 'Message<$T, $K>(msgId: $msgId, createTime: $createTime, updateTime: $updateTime, upMessage: $upMessage, downMessage: $downMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message<T, K> &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            const DeepCollectionEquality().equals(other.upMessage, upMessage) &&
            const DeepCollectionEquality()
                .equals(other.downMessage, downMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      msgId,
      createTime,
      updateTime,
      const DeepCollectionEquality().hash(upMessage),
      const DeepCollectionEquality().hash(downMessage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<T, K, _$_Message<T, K>> get copyWith =>
      __$$_MessageCopyWithImpl<T, K, _$_Message<T, K>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(
      Object? Function(T) toJsonT, Object? Function(K) toJsonK) {
    return _$$_MessageToJson<T, K>(this, toJsonT, toJsonK);
  }
}

abstract class _Message<T extends UpMessageStatus, K>
    implements Message<T, K>, UpMessageStruct<T>, DownMessageStruct<K> {
  const factory _Message(
      {required final String msgId,
      required final int createTime,
      required final int updateTime,
      final T? upMessage,
      final K? downMessage}) = _$_Message<T, K>;

  factory _Message.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      K Function(Object?) fromJsonK) = _$_Message<T, K>.fromJson;

  @override
  String get msgId;
  @override
  int get createTime;
  @override
  int get updateTime;
  @override
  T? get upMessage;
  @override
  K? get downMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<T, K, _$_Message<T, K>> get copyWith =>
      throw _privateConstructorUsedError;
}
