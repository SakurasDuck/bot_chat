// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatState _$ChatStateFromJson(Map<String, dynamic> json) {
  return _ChatState.fromJson(json);
}

/// @nodoc
mixin _$ChatState {
  int get createTimeStamp => throw _privateConstructorUsedError;
  SendMessage? get fromMe => throw _privateConstructorUsedError;
  ChatResponse? get fromBot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({int createTimeStamp, SendMessage? fromMe, ChatResponse? fromBot});

  $SendMessageCopyWith<$Res>? get fromMe;
  $ChatResponseCopyWith<$Res>? get fromBot;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTimeStamp = null,
    Object? fromMe = freezed,
    Object? fromBot = freezed,
  }) {
    return _then(_value.copyWith(
      createTimeStamp: null == createTimeStamp
          ? _value.createTimeStamp
          : createTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      fromMe: freezed == fromMe
          ? _value.fromMe
          : fromMe // ignore: cast_nullable_to_non_nullable
              as SendMessage?,
      fromBot: freezed == fromBot
          ? _value.fromBot
          : fromBot // ignore: cast_nullable_to_non_nullable
              as ChatResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendMessageCopyWith<$Res>? get fromMe {
    if (_value.fromMe == null) {
      return null;
    }

    return $SendMessageCopyWith<$Res>(_value.fromMe!, (value) {
      return _then(_value.copyWith(fromMe: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatResponseCopyWith<$Res>? get fromBot {
    if (_value.fromBot == null) {
      return null;
    }

    return $ChatResponseCopyWith<$Res>(_value.fromBot!, (value) {
      return _then(_value.copyWith(fromBot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int createTimeStamp, SendMessage? fromMe, ChatResponse? fromBot});

  @override
  $SendMessageCopyWith<$Res>? get fromMe;
  @override
  $ChatResponseCopyWith<$Res>? get fromBot;
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatState>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTimeStamp = null,
    Object? fromMe = freezed,
    Object? fromBot = freezed,
  }) {
    return _then(_$_ChatState(
      createTimeStamp: null == createTimeStamp
          ? _value.createTimeStamp
          : createTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      fromMe: freezed == fromMe
          ? _value.fromMe
          : fromMe // ignore: cast_nullable_to_non_nullable
              as SendMessage?,
      fromBot: freezed == fromBot
          ? _value.fromBot
          : fromBot // ignore: cast_nullable_to_non_nullable
              as ChatResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {required this.createTimeStamp, this.fromMe, this.fromBot});

  factory _$_ChatState.fromJson(Map<String, dynamic> json) =>
      _$$_ChatStateFromJson(json);

  @override
  final int createTimeStamp;
  @override
  final SendMessage? fromMe;
  @override
  final ChatResponse? fromBot;

  @override
  String toString() {
    return 'ChatState(createTimeStamp: $createTimeStamp, fromMe: $fromMe, fromBot: $fromBot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            (identical(other.createTimeStamp, createTimeStamp) ||
                other.createTimeStamp == createTimeStamp) &&
            (identical(other.fromMe, fromMe) || other.fromMe == fromMe) &&
            (identical(other.fromBot, fromBot) || other.fromBot == fromBot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createTimeStamp, fromMe, fromBot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatStateToJson(
      this,
    );
  }
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final int createTimeStamp,
      final SendMessage? fromMe,
      final ChatResponse? fromBot}) = _$_ChatState;

  factory _ChatState.fromJson(Map<String, dynamic> json) =
      _$_ChatState.fromJson;

  @override
  int get createTimeStamp;
  @override
  SendMessage? get fromMe;
  @override
  ChatResponse? get fromBot;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessage _$SendMessageFromJson(Map<String, dynamic> json) {
  return _SendMessage.fromJson(json);
}

/// @nodoc
mixin _$SendMessage {
  String get id => throw _privateConstructorUsedError;
  ReqMessage get message => throw _privateConstructorUsedError;
  SendMessageStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageCopyWith<SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageCopyWith<$Res> {
  factory $SendMessageCopyWith(
          SendMessage value, $Res Function(SendMessage) then) =
      _$SendMessageCopyWithImpl<$Res, SendMessage>;
  @useResult
  $Res call({String id, ReqMessage message, SendMessageStatus status});

  $ReqMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$SendMessageCopyWithImpl<$Res, $Val extends SendMessage>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ReqMessage,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendMessageStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReqMessageCopyWith<$Res> get message {
    return $ReqMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SendMessageCopyWith<$Res>
    implements $SendMessageCopyWith<$Res> {
  factory _$$_SendMessageCopyWith(
          _$_SendMessage value, $Res Function(_$_SendMessage) then) =
      __$$_SendMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ReqMessage message, SendMessageStatus status});

  @override
  $ReqMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_SendMessageCopyWithImpl<$Res>
    extends _$SendMessageCopyWithImpl<$Res, _$_SendMessage>
    implements _$$_SendMessageCopyWith<$Res> {
  __$$_SendMessageCopyWithImpl(
      _$_SendMessage _value, $Res Function(_$_SendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$_SendMessage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ReqMessage,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendMessageStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendMessage implements _SendMessage {
  const _$_SendMessage(
      {required this.id, required this.message, required this.status});

  factory _$_SendMessage.fromJson(Map<String, dynamic> json) =>
      _$$_SendMessageFromJson(json);

  @override
  final String id;
  @override
  final ReqMessage message;
  @override
  final SendMessageStatus status;

  @override
  String toString() {
    return 'SendMessage(id: $id, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      __$$_SendMessageCopyWithImpl<_$_SendMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendMessageToJson(
      this,
    );
  }
}

abstract class _SendMessage implements SendMessage {
  const factory _SendMessage(
      {required final String id,
      required final ReqMessage message,
      required final SendMessageStatus status}) = _$_SendMessage;

  factory _SendMessage.fromJson(Map<String, dynamic> json) =
      _$_SendMessage.fromJson;

  @override
  String get id;
  @override
  ReqMessage get message;
  @override
  SendMessageStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
