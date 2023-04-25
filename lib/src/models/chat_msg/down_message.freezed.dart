// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'down_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownMessage _$DownMessageFromJson(Map<String, dynamic> json) {
  return _DownMessage.fromJson(json);
}

/// @nodoc
mixin _$DownMessage {
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownMessageCopyWith<DownMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownMessageCopyWith<$Res> {
  factory $DownMessageCopyWith(
          DownMessage value, $Res Function(DownMessage) then) =
      _$DownMessageCopyWithImpl<$Res, DownMessage>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$DownMessageCopyWithImpl<$Res, $Val extends DownMessage>
    implements $DownMessageCopyWith<$Res> {
  _$DownMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownMessageCopyWith<$Res>
    implements $DownMessageCopyWith<$Res> {
  factory _$$_DownMessageCopyWith(
          _$_DownMessage value, $Res Function(_$_DownMessage) then) =
      __$$_DownMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$_DownMessageCopyWithImpl<$Res>
    extends _$DownMessageCopyWithImpl<$Res, _$_DownMessage>
    implements _$$_DownMessageCopyWith<$Res> {
  __$$_DownMessageCopyWithImpl(
      _$_DownMessage _value, $Res Function(_$_DownMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_DownMessage(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownMessage implements _DownMessage {
  const _$_DownMessage({required this.content});

  factory _$_DownMessage.fromJson(Map<String, dynamic> json) =>
      _$$_DownMessageFromJson(json);

  @override
  final String content;

  @override
  String toString() {
    return 'DownMessage(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownMessage &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownMessageCopyWith<_$_DownMessage> get copyWith =>
      __$$_DownMessageCopyWithImpl<_$_DownMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownMessageToJson(
      this,
    );
  }
}

abstract class _DownMessage implements DownMessage {
  const factory _DownMessage({required final String content}) = _$_DownMessage;

  factory _DownMessage.fromJson(Map<String, dynamic> json) =
      _$_DownMessage.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_DownMessageCopyWith<_$_DownMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
