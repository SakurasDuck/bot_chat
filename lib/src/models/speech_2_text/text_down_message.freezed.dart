// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_down_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextDownMessage _$TextDownMessageFromJson(Map<String, dynamic> json) {
  return _TextDownMessage.fromJson(json);
}

/// @nodoc
mixin _$TextDownMessage {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextDownMessageCopyWith<TextDownMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDownMessageCopyWith<$Res> {
  factory $TextDownMessageCopyWith(
          TextDownMessage value, $Res Function(TextDownMessage) then) =
      _$TextDownMessageCopyWithImpl<$Res, TextDownMessage>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$TextDownMessageCopyWithImpl<$Res, $Val extends TextDownMessage>
    implements $TextDownMessageCopyWith<$Res> {
  _$TextDownMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextDownMessageCopyWith<$Res>
    implements $TextDownMessageCopyWith<$Res> {
  factory _$$_TextDownMessageCopyWith(
          _$_TextDownMessage value, $Res Function(_$_TextDownMessage) then) =
      __$$_TextDownMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_TextDownMessageCopyWithImpl<$Res>
    extends _$TextDownMessageCopyWithImpl<$Res, _$_TextDownMessage>
    implements _$$_TextDownMessageCopyWith<$Res> {
  __$$_TextDownMessageCopyWithImpl(
      _$_TextDownMessage _value, $Res Function(_$_TextDownMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_TextDownMessage(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextDownMessage implements _TextDownMessage {
  const _$_TextDownMessage({required this.text});

  factory _$_TextDownMessage.fromJson(Map<String, dynamic> json) =>
      _$$_TextDownMessageFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'TextDownMessage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextDownMessage &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextDownMessageCopyWith<_$_TextDownMessage> get copyWith =>
      __$$_TextDownMessageCopyWithImpl<_$_TextDownMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextDownMessageToJson(
      this,
    );
  }
}

abstract class _TextDownMessage implements TextDownMessage {
  const factory _TextDownMessage({required final String text}) =
      _$_TextDownMessage;

  factory _TextDownMessage.fromJson(Map<String, dynamic> json) =
      _$_TextDownMessage.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_TextDownMessageCopyWith<_$_TextDownMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
