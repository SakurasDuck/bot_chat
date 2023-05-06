// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_up_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioUpMessage _$AudioUpMessageFromJson(Map<String, dynamic> json) {
  return _AudioUpMessage.fromJson(json);
}

/// @nodoc
mixin _$AudioUpMessage {
  String get audioPath => throw _privateConstructorUsedError;
  Duration get audioLength => throw _privateConstructorUsedError;
  SendMessageStatus get status => throw _privateConstructorUsedError;
  set status(SendMessageStatus value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioUpMessageCopyWith<AudioUpMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioUpMessageCopyWith<$Res> {
  factory $AudioUpMessageCopyWith(
          AudioUpMessage value, $Res Function(AudioUpMessage) then) =
      _$AudioUpMessageCopyWithImpl<$Res, AudioUpMessage>;
  @useResult
  $Res call({String audioPath, Duration audioLength, SendMessageStatus status});
}

/// @nodoc
class _$AudioUpMessageCopyWithImpl<$Res, $Val extends AudioUpMessage>
    implements $AudioUpMessageCopyWith<$Res> {
  _$AudioUpMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
    Object? audioLength = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      audioLength: null == audioLength
          ? _value.audioLength
          : audioLength // ignore: cast_nullable_to_non_nullable
              as Duration,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendMessageStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AudioUpMessageCopyWith<$Res>
    implements $AudioUpMessageCopyWith<$Res> {
  factory _$$_AudioUpMessageCopyWith(
          _$_AudioUpMessage value, $Res Function(_$_AudioUpMessage) then) =
      __$$_AudioUpMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String audioPath, Duration audioLength, SendMessageStatus status});
}

/// @nodoc
class __$$_AudioUpMessageCopyWithImpl<$Res>
    extends _$AudioUpMessageCopyWithImpl<$Res, _$_AudioUpMessage>
    implements _$$_AudioUpMessageCopyWith<$Res> {
  __$$_AudioUpMessageCopyWithImpl(
      _$_AudioUpMessage _value, $Res Function(_$_AudioUpMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
    Object? audioLength = null,
    Object? status = null,
  }) {
    return _then(_$_AudioUpMessage(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      audioLength: null == audioLength
          ? _value.audioLength
          : audioLength // ignore: cast_nullable_to_non_nullable
              as Duration,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SendMessageStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AudioUpMessage implements _AudioUpMessage {
  _$_AudioUpMessage(
      {required this.audioPath,
      required this.audioLength,
      required this.status});

  factory _$_AudioUpMessage.fromJson(Map<String, dynamic> json) =>
      _$$_AudioUpMessageFromJson(json);

  @override
  final String audioPath;
  @override
  final Duration audioLength;
  @override
  SendMessageStatus status;

  @override
  String toString() {
    return 'AudioUpMessage(audioPath: $audioPath, audioLength: $audioLength, status: $status)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioUpMessageCopyWith<_$_AudioUpMessage> get copyWith =>
      __$$_AudioUpMessageCopyWithImpl<_$_AudioUpMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AudioUpMessageToJson(
      this,
    );
  }
}

abstract class _AudioUpMessage implements AudioUpMessage {
  factory _AudioUpMessage(
      {required final String audioPath,
      required final Duration audioLength,
      required SendMessageStatus status}) = _$_AudioUpMessage;

  factory _AudioUpMessage.fromJson(Map<String, dynamic> json) =
      _$_AudioUpMessage.fromJson;

  @override
  String get audioPath;
  @override
  Duration get audioLength;
  @override
  SendMessageStatus get status;
  set status(SendMessageStatus value);
  @override
  @JsonKey(ignore: true)
  _$$_AudioUpMessageCopyWith<_$_AudioUpMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioModel _$AudioModelFromJson(Map<String, dynamic> json) {
  return _AudioModel.fromJson(json);
}

/// @nodoc
mixin _$AudioModel {
  String get audioPath => throw _privateConstructorUsedError;
  Duration get audioLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioModelCopyWith<AudioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioModelCopyWith<$Res> {
  factory $AudioModelCopyWith(
          AudioModel value, $Res Function(AudioModel) then) =
      _$AudioModelCopyWithImpl<$Res, AudioModel>;
  @useResult
  $Res call({String audioPath, Duration audioLength});
}

/// @nodoc
class _$AudioModelCopyWithImpl<$Res, $Val extends AudioModel>
    implements $AudioModelCopyWith<$Res> {
  _$AudioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
    Object? audioLength = null,
  }) {
    return _then(_value.copyWith(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      audioLength: null == audioLength
          ? _value.audioLength
          : audioLength // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AudioModelCopyWith<$Res>
    implements $AudioModelCopyWith<$Res> {
  factory _$$_AudioModelCopyWith(
          _$_AudioModel value, $Res Function(_$_AudioModel) then) =
      __$$_AudioModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String audioPath, Duration audioLength});
}

/// @nodoc
class __$$_AudioModelCopyWithImpl<$Res>
    extends _$AudioModelCopyWithImpl<$Res, _$_AudioModel>
    implements _$$_AudioModelCopyWith<$Res> {
  __$$_AudioModelCopyWithImpl(
      _$_AudioModel _value, $Res Function(_$_AudioModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
    Object? audioLength = null,
  }) {
    return _then(_$_AudioModel(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      audioLength: null == audioLength
          ? _value.audioLength
          : audioLength // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AudioModel implements _AudioModel {
  const _$_AudioModel({required this.audioPath, required this.audioLength});

  factory _$_AudioModel.fromJson(Map<String, dynamic> json) =>
      _$$_AudioModelFromJson(json);

  @override
  final String audioPath;
  @override
  final Duration audioLength;

  @override
  String toString() {
    return 'AudioModel(audioPath: $audioPath, audioLength: $audioLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioModel &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.audioLength, audioLength) ||
                other.audioLength == audioLength));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, audioPath, audioLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioModelCopyWith<_$_AudioModel> get copyWith =>
      __$$_AudioModelCopyWithImpl<_$_AudioModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AudioModelToJson(
      this,
    );
  }
}

abstract class _AudioModel implements AudioModel {
  const factory _AudioModel(
      {required final String audioPath,
      required final Duration audioLength}) = _$_AudioModel;

  factory _AudioModel.fromJson(Map<String, dynamic> json) =
      _$_AudioModel.fromJson;

  @override
  String get audioPath;
  @override
  Duration get audioLength;
  @override
  @JsonKey(ignore: true)
  _$$_AudioModelCopyWith<_$_AudioModel> get copyWith =>
      throw _privateConstructorUsedError;
}
