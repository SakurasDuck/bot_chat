// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_down_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatDownMessage _$ChatDownMessageFromJson(Map<String, dynamic> json) {
  return _ChatDownMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatDownMessage {
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDownMessageCopyWith<ChatDownMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDownMessageCopyWith<$Res> {
  factory $ChatDownMessageCopyWith(
          ChatDownMessage value, $Res Function(ChatDownMessage) then) =
      _$ChatDownMessageCopyWithImpl<$Res, ChatDownMessage>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$ChatDownMessageCopyWithImpl<$Res, $Val extends ChatDownMessage>
    implements $ChatDownMessageCopyWith<$Res> {
  _$ChatDownMessageCopyWithImpl(this._value, this._then);

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
abstract class _$$_ChatDownMessageCopyWith<$Res>
    implements $ChatDownMessageCopyWith<$Res> {
  factory _$$_ChatDownMessageCopyWith(
          _$_ChatDownMessage value, $Res Function(_$_ChatDownMessage) then) =
      __$$_ChatDownMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$_ChatDownMessageCopyWithImpl<$Res>
    extends _$ChatDownMessageCopyWithImpl<$Res, _$_ChatDownMessage>
    implements _$$_ChatDownMessageCopyWith<$Res> {
  __$$_ChatDownMessageCopyWithImpl(
      _$_ChatDownMessage _value, $Res Function(_$_ChatDownMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_ChatDownMessage(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatDownMessage implements _ChatDownMessage {
  const _$_ChatDownMessage({required this.content});

  factory _$_ChatDownMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ChatDownMessageFromJson(json);

  @override
  final String content;

  @override
  String toString() {
    return 'ChatDownMessage(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatDownMessage &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatDownMessageCopyWith<_$_ChatDownMessage> get copyWith =>
      __$$_ChatDownMessageCopyWithImpl<_$_ChatDownMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatDownMessageToJson(
      this,
    );
  }
}

abstract class _ChatDownMessage implements ChatDownMessage {
  const factory _ChatDownMessage({required final String content}) =
      _$_ChatDownMessage;

  factory _ChatDownMessage.fromJson(Map<String, dynamic> json) =
      _$_ChatDownMessage.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ChatDownMessageCopyWith<_$_ChatDownMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
