// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_up_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatUpMessage _$ChatUpMessageFromJson(Map<String, dynamic> json) {
  return _ChatUpMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatUpMessage {
  SendMessageStatus get status => throw _privateConstructorUsedError;
  set status(SendMessageStatus value) => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatUpMessageCopyWith<ChatUpMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUpMessageCopyWith<$Res> {
  factory $ChatUpMessageCopyWith(
          ChatUpMessage value, $Res Function(ChatUpMessage) then) =
      _$ChatUpMessageCopyWithImpl<$Res, ChatUpMessage>;
  @useResult
  $Res call({SendMessageStatus status, String content, Role role});
}

/// @nodoc
class _$ChatUpMessageCopyWithImpl<$Res, $Val extends ChatUpMessage>
    implements $ChatUpMessageCopyWith<$Res> {
  _$ChatUpMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = null,
    Object? role = null,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatUpMessageCopyWith<$Res>
    implements $ChatUpMessageCopyWith<$Res> {
  factory _$$_ChatUpMessageCopyWith(
          _$_ChatUpMessage value, $Res Function(_$_ChatUpMessage) then) =
      __$$_ChatUpMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendMessageStatus status, String content, Role role});
}

/// @nodoc
class __$$_ChatUpMessageCopyWithImpl<$Res>
    extends _$ChatUpMessageCopyWithImpl<$Res, _$_ChatUpMessage>
    implements _$$_ChatUpMessageCopyWith<$Res> {
  __$$_ChatUpMessageCopyWithImpl(
      _$_ChatUpMessage _value, $Res Function(_$_ChatUpMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = null,
    Object? role = null,
  }) {
    return _then(_$_ChatUpMessage(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendMessageStatus,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatUpMessage implements _ChatUpMessage {
  _$_ChatUpMessage(
      {required this.status, required this.content, required this.role});

  factory _$_ChatUpMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ChatUpMessageFromJson(json);

  @override
  SendMessageStatus status;
  @override
  final String content;
  @override
  final Role role;

  @override
  String toString() {
    return 'ChatUpMessage(status: $status, content: $content, role: $role)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatUpMessageCopyWith<_$_ChatUpMessage> get copyWith =>
      __$$_ChatUpMessageCopyWithImpl<_$_ChatUpMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatUpMessageToJson(
      this,
    );
  }
}

abstract class _ChatUpMessage implements ChatUpMessage {
  factory _ChatUpMessage(
      {required SendMessageStatus status,
      required final String content,
      required final Role role}) = _$_ChatUpMessage;

  factory _ChatUpMessage.fromJson(Map<String, dynamic> json) =
      _$_ChatUpMessage.fromJson;

  @override
  SendMessageStatus get status;
  set status(SendMessageStatus value);
  @override
  String get content;
  @override
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$$_ChatUpMessageCopyWith<_$_ChatUpMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
