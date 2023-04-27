// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_gen_down_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageGenDownMessage _$ImageGenDownMessageFromJson(Map<String, dynamic> json) {
  return _ImageGenDownMessage.fromJson(json);
}

/// @nodoc
mixin _$ImageGenDownMessage {
  String? get url => throw _privateConstructorUsedError;
  String? get base64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageGenDownMessageCopyWith<ImageGenDownMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenDownMessageCopyWith<$Res> {
  factory $ImageGenDownMessageCopyWith(
          ImageGenDownMessage value, $Res Function(ImageGenDownMessage) then) =
      _$ImageGenDownMessageCopyWithImpl<$Res, ImageGenDownMessage>;
  @useResult
  $Res call({String? url, String? base64});
}

/// @nodoc
class _$ImageGenDownMessageCopyWithImpl<$Res, $Val extends ImageGenDownMessage>
    implements $ImageGenDownMessageCopyWith<$Res> {
  _$ImageGenDownMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? base64 = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      base64: freezed == base64
          ? _value.base64
          : base64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageGenDownMessageCopyWith<$Res>
    implements $ImageGenDownMessageCopyWith<$Res> {
  factory _$$_ImageGenDownMessageCopyWith(_$_ImageGenDownMessage value,
          $Res Function(_$_ImageGenDownMessage) then) =
      __$$_ImageGenDownMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? base64});
}

/// @nodoc
class __$$_ImageGenDownMessageCopyWithImpl<$Res>
    extends _$ImageGenDownMessageCopyWithImpl<$Res, _$_ImageGenDownMessage>
    implements _$$_ImageGenDownMessageCopyWith<$Res> {
  __$$_ImageGenDownMessageCopyWithImpl(_$_ImageGenDownMessage _value,
      $Res Function(_$_ImageGenDownMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? base64 = freezed,
  }) {
    return _then(_$_ImageGenDownMessage(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      base64: freezed == base64
          ? _value.base64
          : base64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageGenDownMessage implements _ImageGenDownMessage {
  const _$_ImageGenDownMessage({this.url, this.base64});

  factory _$_ImageGenDownMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ImageGenDownMessageFromJson(json);

  @override
  final String? url;
  @override
  final String? base64;

  @override
  String toString() {
    return 'ImageGenDownMessage(url: $url, base64: $base64)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageGenDownMessage &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.base64, base64) || other.base64 == base64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, base64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageGenDownMessageCopyWith<_$_ImageGenDownMessage> get copyWith =>
      __$$_ImageGenDownMessageCopyWithImpl<_$_ImageGenDownMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageGenDownMessageToJson(
      this,
    );
  }
}

abstract class _ImageGenDownMessage implements ImageGenDownMessage {
  const factory _ImageGenDownMessage(
      {final String? url, final String? base64}) = _$_ImageGenDownMessage;

  factory _ImageGenDownMessage.fromJson(Map<String, dynamic> json) =
      _$_ImageGenDownMessage.fromJson;

  @override
  String? get url;
  @override
  String? get base64;
  @override
  @JsonKey(ignore: true)
  _$$_ImageGenDownMessageCopyWith<_$_ImageGenDownMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
