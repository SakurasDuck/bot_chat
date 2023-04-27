// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_gen_up_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageGenUpMessage _$ImageGenUpMessageFromJson(Map<String, dynamic> json) {
  return _ImageGenUpMessage.fromJson(json);
}

/// @nodoc
mixin _$ImageGenUpMessage {
  SendMessageStatus get status => throw _privateConstructorUsedError;
  set status(SendMessageStatus value) => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageGenUpMessageCopyWith<ImageGenUpMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenUpMessageCopyWith<$Res> {
  factory $ImageGenUpMessageCopyWith(
          ImageGenUpMessage value, $Res Function(ImageGenUpMessage) then) =
      _$ImageGenUpMessageCopyWithImpl<$Res, ImageGenUpMessage>;
  @useResult
  $Res call({SendMessageStatus status, String content});
}

/// @nodoc
class _$ImageGenUpMessageCopyWithImpl<$Res, $Val extends ImageGenUpMessage>
    implements $ImageGenUpMessageCopyWith<$Res> {
  _$ImageGenUpMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendMessageStatus,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageGenUpMessageCopyWith<$Res>
    implements $ImageGenUpMessageCopyWith<$Res> {
  factory _$$_ImageGenUpMessageCopyWith(_$_ImageGenUpMessage value,
          $Res Function(_$_ImageGenUpMessage) then) =
      __$$_ImageGenUpMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendMessageStatus status, String content});
}

/// @nodoc
class __$$_ImageGenUpMessageCopyWithImpl<$Res>
    extends _$ImageGenUpMessageCopyWithImpl<$Res, _$_ImageGenUpMessage>
    implements _$$_ImageGenUpMessageCopyWith<$Res> {
  __$$_ImageGenUpMessageCopyWithImpl(
      _$_ImageGenUpMessage _value, $Res Function(_$_ImageGenUpMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = null,
  }) {
    return _then(_$_ImageGenUpMessage(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendMessageStatus,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageGenUpMessage implements _ImageGenUpMessage {
  _$_ImageGenUpMessage({required this.status, required this.content});

  factory _$_ImageGenUpMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ImageGenUpMessageFromJson(json);

  @override
  SendMessageStatus status;
  @override
  final String content;

  @override
  String toString() {
    return 'ImageGenUpMessage(status: $status, content: $content)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageGenUpMessageCopyWith<_$_ImageGenUpMessage> get copyWith =>
      __$$_ImageGenUpMessageCopyWithImpl<_$_ImageGenUpMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageGenUpMessageToJson(
      this,
    );
  }
}

abstract class _ImageGenUpMessage implements ImageGenUpMessage {
  factory _ImageGenUpMessage(
      {required SendMessageStatus status,
      required final String content}) = _$_ImageGenUpMessage;

  factory _ImageGenUpMessage.fromJson(Map<String, dynamic> json) =
      _$_ImageGenUpMessage.fromJson;

  @override
  SendMessageStatus get status;
  set status(SendMessageStatus value);
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ImageGenUpMessageCopyWith<_$_ImageGenUpMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
