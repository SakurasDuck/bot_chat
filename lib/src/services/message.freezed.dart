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

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$_Message(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message({required this.role, required this.content});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'Message(role: $role, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final String role, required final String content}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

Choices _$ChoicesFromJson(Map<String, dynamic> json) {
  return _Choices.fromJson(json);
}

/// @nodoc
mixin _$Choices {
  int get index => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;
  String get finish_reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoicesCopyWith<Choices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesCopyWith<$Res> {
  factory $ChoicesCopyWith(Choices value, $Res Function(Choices) then) =
      _$ChoicesCopyWithImpl<$Res, Choices>;
  @useResult
  $Res call({int index, Message message, String finish_reason});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChoicesCopyWithImpl<$Res, $Val extends Choices>
    implements $ChoicesCopyWith<$Res> {
  _$ChoicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finish_reason = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      finish_reason: null == finish_reason
          ? _value.finish_reason
          : finish_reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChoicesCopyWith<$Res> implements $ChoicesCopyWith<$Res> {
  factory _$$_ChoicesCopyWith(
          _$_Choices value, $Res Function(_$_Choices) then) =
      __$$_ChoicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, Message message, String finish_reason});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_ChoicesCopyWithImpl<$Res>
    extends _$ChoicesCopyWithImpl<$Res, _$_Choices>
    implements _$$_ChoicesCopyWith<$Res> {
  __$$_ChoicesCopyWithImpl(_$_Choices _value, $Res Function(_$_Choices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finish_reason = null,
  }) {
    return _then(_$_Choices(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      finish_reason: null == finish_reason
          ? _value.finish_reason
          : finish_reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Choices implements _Choices {
  const _$_Choices(
      {required this.index,
      required this.message,
      required this.finish_reason});

  factory _$_Choices.fromJson(Map<String, dynamic> json) =>
      _$$_ChoicesFromJson(json);

  @override
  final int index;
  @override
  final Message message;
  @override
  final String finish_reason;

  @override
  String toString() {
    return 'Choices(index: $index, message: $message, finish_reason: $finish_reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Choices &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finish_reason, finish_reason) ||
                other.finish_reason == finish_reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finish_reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoicesCopyWith<_$_Choices> get copyWith =>
      __$$_ChoicesCopyWithImpl<_$_Choices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoicesToJson(
      this,
    );
  }
}

abstract class _Choices implements Choices {
  const factory _Choices(
      {required final int index,
      required final Message message,
      required final String finish_reason}) = _$_Choices;

  factory _Choices.fromJson(Map<String, dynamic> json) = _$_Choices.fromJson;

  @override
  int get index;
  @override
  Message get message;
  @override
  String get finish_reason;
  @override
  @JsonKey(ignore: true)
  _$$_ChoicesCopyWith<_$_Choices> get copyWith =>
      throw _privateConstructorUsedError;
}

Usage _$UsageFromJson(Map<String, dynamic> json) {
  return _Usage.fromJson(json);
}

/// @nodoc
mixin _$Usage {
  int get prompt_tokens => throw _privateConstructorUsedError;
  int get completion_tokens => throw _privateConstructorUsedError;
  int get total_tokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsageCopyWith<Usage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageCopyWith<$Res> {
  factory $UsageCopyWith(Usage value, $Res Function(Usage) then) =
      _$UsageCopyWithImpl<$Res, Usage>;
  @useResult
  $Res call({int prompt_tokens, int completion_tokens, int total_tokens});
}

/// @nodoc
class _$UsageCopyWithImpl<$Res, $Val extends Usage>
    implements $UsageCopyWith<$Res> {
  _$UsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt_tokens = null,
    Object? completion_tokens = null,
    Object? total_tokens = null,
  }) {
    return _then(_value.copyWith(
      prompt_tokens: null == prompt_tokens
          ? _value.prompt_tokens
          : prompt_tokens // ignore: cast_nullable_to_non_nullable
              as int,
      completion_tokens: null == completion_tokens
          ? _value.completion_tokens
          : completion_tokens // ignore: cast_nullable_to_non_nullable
              as int,
      total_tokens: null == total_tokens
          ? _value.total_tokens
          : total_tokens // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsageCopyWith<$Res> implements $UsageCopyWith<$Res> {
  factory _$$_UsageCopyWith(_$_Usage value, $Res Function(_$_Usage) then) =
      __$$_UsageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int prompt_tokens, int completion_tokens, int total_tokens});
}

/// @nodoc
class __$$_UsageCopyWithImpl<$Res> extends _$UsageCopyWithImpl<$Res, _$_Usage>
    implements _$$_UsageCopyWith<$Res> {
  __$$_UsageCopyWithImpl(_$_Usage _value, $Res Function(_$_Usage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt_tokens = null,
    Object? completion_tokens = null,
    Object? total_tokens = null,
  }) {
    return _then(_$_Usage(
      prompt_tokens: null == prompt_tokens
          ? _value.prompt_tokens
          : prompt_tokens // ignore: cast_nullable_to_non_nullable
              as int,
      completion_tokens: null == completion_tokens
          ? _value.completion_tokens
          : completion_tokens // ignore: cast_nullable_to_non_nullable
              as int,
      total_tokens: null == total_tokens
          ? _value.total_tokens
          : total_tokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Usage implements _Usage {
  const _$_Usage(
      {required this.prompt_tokens,
      required this.completion_tokens,
      required this.total_tokens});

  factory _$_Usage.fromJson(Map<String, dynamic> json) =>
      _$$_UsageFromJson(json);

  @override
  final int prompt_tokens;
  @override
  final int completion_tokens;
  @override
  final int total_tokens;

  @override
  String toString() {
    return 'Usage(prompt_tokens: $prompt_tokens, completion_tokens: $completion_tokens, total_tokens: $total_tokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Usage &&
            (identical(other.prompt_tokens, prompt_tokens) ||
                other.prompt_tokens == prompt_tokens) &&
            (identical(other.completion_tokens, completion_tokens) ||
                other.completion_tokens == completion_tokens) &&
            (identical(other.total_tokens, total_tokens) ||
                other.total_tokens == total_tokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, prompt_tokens, completion_tokens, total_tokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsageCopyWith<_$_Usage> get copyWith =>
      __$$_UsageCopyWithImpl<_$_Usage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsageToJson(
      this,
    );
  }
}

abstract class _Usage implements Usage {
  const factory _Usage(
      {required final int prompt_tokens,
      required final int completion_tokens,
      required final int total_tokens}) = _$_Usage;

  factory _Usage.fromJson(Map<String, dynamic> json) = _$_Usage.fromJson;

  @override
  int get prompt_tokens;
  @override
  int get completion_tokens;
  @override
  int get total_tokens;
  @override
  @JsonKey(ignore: true)
  _$$_UsageCopyWith<_$_Usage> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) {
  return _ChatResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatResponse {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  Usage get usage => throw _privateConstructorUsedError;
  List<Choices> get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatResponseCopyWith<ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseCopyWith<$Res> {
  factory $ChatResponseCopyWith(
          ChatResponse value, $Res Function(ChatResponse) then) =
      _$ChatResponseCopyWithImpl<$Res, ChatResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      Usage usage,
      List<Choices> choices});

  $UsageCopyWith<$Res> get usage;
}

/// @nodoc
class _$ChatResponseCopyWithImpl<$Res, $Val extends ChatResponse>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? usage = null,
    Object? choices = null,
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
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageCopyWith<$Res> get usage {
    return $UsageCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatResponseCopyWith<$Res>
    implements $ChatResponseCopyWith<$Res> {
  factory _$$_ChatResponseCopyWith(
          _$_ChatResponse value, $Res Function(_$_ChatResponse) then) =
      __$$_ChatResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      Usage usage,
      List<Choices> choices});

  @override
  $UsageCopyWith<$Res> get usage;
}

/// @nodoc
class __$$_ChatResponseCopyWithImpl<$Res>
    extends _$ChatResponseCopyWithImpl<$Res, _$_ChatResponse>
    implements _$$_ChatResponseCopyWith<$Res> {
  __$$_ChatResponseCopyWithImpl(
      _$_ChatResponse _value, $Res Function(_$_ChatResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? usage = null,
    Object? choices = null,
  }) {
    return _then(_$_ChatResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatResponse implements _ChatResponse {
  const _$_ChatResponse(
      {required this.id,
      required this.object,
      required this.created,
      required this.usage,
      required final List<Choices> choices})
      : _choices = choices;

  factory _$_ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChatResponseFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  final int created;
  @override
  final Usage usage;
  final List<Choices> _choices;
  @override
  List<Choices> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'ChatResponse(id: $id, object: $object, created: $created, usage: $usage, choices: $choices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, usage,
      const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatResponseCopyWith<_$_ChatResponse> get copyWith =>
      __$$_ChatResponseCopyWithImpl<_$_ChatResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatResponseToJson(
      this,
    );
  }
}

abstract class _ChatResponse implements ChatResponse {
  const factory _ChatResponse(
      {required final String id,
      required final String object,
      required final int created,
      required final Usage usage,
      required final List<Choices> choices}) = _$_ChatResponse;

  factory _ChatResponse.fromJson(Map<String, dynamic> json) =
      _$_ChatResponse.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  int get created;
  @override
  Usage get usage;
  @override
  List<Choices> get choices;
  @override
  @JsonKey(ignore: true)
  _$$_ChatResponseCopyWith<_$_ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRequest _$ChatRequestFromJson(Map<String, dynamic> json) {
  return _ChatRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatRequest {
  String get model => throw _privateConstructorUsedError;
  List<ReqMessage> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRequestCopyWith<ChatRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRequestCopyWith<$Res> {
  factory $ChatRequestCopyWith(
          ChatRequest value, $Res Function(ChatRequest) then) =
      _$ChatRequestCopyWithImpl<$Res, ChatRequest>;
  @useResult
  $Res call({String model, List<ReqMessage> messages});
}

/// @nodoc
class _$ChatRequestCopyWithImpl<$Res, $Val extends ChatRequest>
    implements $ChatRequestCopyWith<$Res> {
  _$ChatRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ReqMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatRequestCopyWith<$Res>
    implements $ChatRequestCopyWith<$Res> {
  factory _$$_ChatRequestCopyWith(
          _$_ChatRequest value, $Res Function(_$_ChatRequest) then) =
      __$$_ChatRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String model, List<ReqMessage> messages});
}

/// @nodoc
class __$$_ChatRequestCopyWithImpl<$Res>
    extends _$ChatRequestCopyWithImpl<$Res, _$_ChatRequest>
    implements _$$_ChatRequestCopyWith<$Res> {
  __$$_ChatRequestCopyWithImpl(
      _$_ChatRequest _value, $Res Function(_$_ChatRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
  }) {
    return _then(_$_ChatRequest(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ReqMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRequest implements _ChatRequest {
  const _$_ChatRequest(
      {required this.model, required final List<ReqMessage> messages})
      : _messages = messages;

  factory _$_ChatRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRequestFromJson(json);

  @override
  final String model;
  final List<ReqMessage> _messages;
  @override
  List<ReqMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatRequest(model: $model, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRequest &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, model, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatRequestCopyWith<_$_ChatRequest> get copyWith =>
      __$$_ChatRequestCopyWithImpl<_$_ChatRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRequestToJson(
      this,
    );
  }
}

abstract class _ChatRequest implements ChatRequest {
  const factory _ChatRequest(
      {required final String model,
      required final List<ReqMessage> messages}) = _$_ChatRequest;

  factory _ChatRequest.fromJson(Map<String, dynamic> json) =
      _$_ChatRequest.fromJson;

  @override
  String get model;
  @override
  List<ReqMessage> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRequestCopyWith<_$_ChatRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ReqMessage _$ReqMessageFromJson(Map<String, dynamic> json) {
  return _ReqMessage.fromJson(json);
}

/// @nodoc
mixin _$ReqMessage {
  String get content => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqMessageCopyWith<ReqMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqMessageCopyWith<$Res> {
  factory $ReqMessageCopyWith(
          ReqMessage value, $Res Function(ReqMessage) then) =
      _$ReqMessageCopyWithImpl<$Res, ReqMessage>;
  @useResult
  $Res call({String content, String role});
}

/// @nodoc
class _$ReqMessageCopyWithImpl<$Res, $Val extends ReqMessage>
    implements $ReqMessageCopyWith<$Res> {
  _$ReqMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqMessageCopyWith<$Res>
    implements $ReqMessageCopyWith<$Res> {
  factory _$$_ReqMessageCopyWith(
          _$_ReqMessage value, $Res Function(_$_ReqMessage) then) =
      __$$_ReqMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String role});
}

/// @nodoc
class __$$_ReqMessageCopyWithImpl<$Res>
    extends _$ReqMessageCopyWithImpl<$Res, _$_ReqMessage>
    implements _$$_ReqMessageCopyWith<$Res> {
  __$$_ReqMessageCopyWithImpl(
      _$_ReqMessage _value, $Res Function(_$_ReqMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? role = null,
  }) {
    return _then(_$_ReqMessage(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReqMessage implements _ReqMessage {
  const _$_ReqMessage({required this.content, required this.role});

  factory _$_ReqMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ReqMessageFromJson(json);

  @override
  final String content;
  @override
  final String role;

  @override
  String toString() {
    return 'ReqMessage(content: $content, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReqMessage &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqMessageCopyWith<_$_ReqMessage> get copyWith =>
      __$$_ReqMessageCopyWithImpl<_$_ReqMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReqMessageToJson(
      this,
    );
  }
}

abstract class _ReqMessage implements ReqMessage {
  const factory _ReqMessage(
      {required final String content,
      required final String role}) = _$_ReqMessage;

  factory _ReqMessage.fromJson(Map<String, dynamic> json) =
      _$_ReqMessage.fromJson;

  @override
  String get content;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_ReqMessageCopyWith<_$_ReqMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
