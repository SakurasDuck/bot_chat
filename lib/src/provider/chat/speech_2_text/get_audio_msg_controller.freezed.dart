// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_audio_msg_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetAudioMsgState {
  bool get isSendingVoice => throw _privateConstructorUsedError;
  set isSendingVoice(bool value) => throw _privateConstructorUsedError;
  bool get isCancelSendVoice => throw _privateConstructorUsedError;
  set isCancelSendVoice(bool value) => throw _privateConstructorUsedError;
  bool get hasWaiter => throw _privateConstructorUsedError;
  set hasWaiter(bool value) => throw _privateConstructorUsedError;
  Future<bool>? get waitStart => throw _privateConstructorUsedError;
  set waitStart(Future<bool>? value) => throw _privateConstructorUsedError;
  String? get audioPath => throw _privateConstructorUsedError;
  set audioPath(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAudioMsgStateCopyWith<GetAudioMsgState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAudioMsgStateCopyWith<$Res> {
  factory $GetAudioMsgStateCopyWith(
          GetAudioMsgState value, $Res Function(GetAudioMsgState) then) =
      _$GetAudioMsgStateCopyWithImpl<$Res, GetAudioMsgState>;
  @useResult
  $Res call(
      {bool isSendingVoice,
      bool isCancelSendVoice,
      bool hasWaiter,
      Future<bool>? waitStart,
      String? audioPath});
}

/// @nodoc
class _$GetAudioMsgStateCopyWithImpl<$Res, $Val extends GetAudioMsgState>
    implements $GetAudioMsgStateCopyWith<$Res> {
  _$GetAudioMsgStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSendingVoice = null,
    Object? isCancelSendVoice = null,
    Object? hasWaiter = null,
    Object? waitStart = freezed,
    Object? audioPath = freezed,
  }) {
    return _then(_value.copyWith(
      isSendingVoice: null == isSendingVoice
          ? _value.isSendingVoice
          : isSendingVoice // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelSendVoice: null == isCancelSendVoice
          ? _value.isCancelSendVoice
          : isCancelSendVoice // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWaiter: null == hasWaiter
          ? _value.hasWaiter
          : hasWaiter // ignore: cast_nullable_to_non_nullable
              as bool,
      waitStart: freezed == waitStart
          ? _value.waitStart
          : waitStart // ignore: cast_nullable_to_non_nullable
              as Future<bool>?,
      audioPath: freezed == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetAudioMsgStateCopyWith<$Res>
    implements $GetAudioMsgStateCopyWith<$Res> {
  factory _$$_GetAudioMsgStateCopyWith(
          _$_GetAudioMsgState value, $Res Function(_$_GetAudioMsgState) then) =
      __$$_GetAudioMsgStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSendingVoice,
      bool isCancelSendVoice,
      bool hasWaiter,
      Future<bool>? waitStart,
      String? audioPath});
}

/// @nodoc
class __$$_GetAudioMsgStateCopyWithImpl<$Res>
    extends _$GetAudioMsgStateCopyWithImpl<$Res, _$_GetAudioMsgState>
    implements _$$_GetAudioMsgStateCopyWith<$Res> {
  __$$_GetAudioMsgStateCopyWithImpl(
      _$_GetAudioMsgState _value, $Res Function(_$_GetAudioMsgState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSendingVoice = null,
    Object? isCancelSendVoice = null,
    Object? hasWaiter = null,
    Object? waitStart = freezed,
    Object? audioPath = freezed,
  }) {
    return _then(_$_GetAudioMsgState(
      isSendingVoice: null == isSendingVoice
          ? _value.isSendingVoice
          : isSendingVoice // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelSendVoice: null == isCancelSendVoice
          ? _value.isCancelSendVoice
          : isCancelSendVoice // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWaiter: null == hasWaiter
          ? _value.hasWaiter
          : hasWaiter // ignore: cast_nullable_to_non_nullable
              as bool,
      waitStart: freezed == waitStart
          ? _value.waitStart
          : waitStart // ignore: cast_nullable_to_non_nullable
              as Future<bool>?,
      audioPath: freezed == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetAudioMsgState implements _GetAudioMsgState {
  _$_GetAudioMsgState(
      {this.isSendingVoice = false,
      this.isCancelSendVoice = false,
      this.hasWaiter = false,
      this.waitStart = null,
      this.audioPath});

  @override
  @JsonKey()
  bool isSendingVoice;
  @override
  @JsonKey()
  bool isCancelSendVoice;
  @override
  @JsonKey()
  bool hasWaiter;
  @override
  @JsonKey()
  Future<bool>? waitStart;
  @override
  String? audioPath;

  @override
  String toString() {
    return 'GetAudioMsgState(isSendingVoice: $isSendingVoice, isCancelSendVoice: $isCancelSendVoice, hasWaiter: $hasWaiter, waitStart: $waitStart, audioPath: $audioPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAudioMsgState &&
            (identical(other.isSendingVoice, isSendingVoice) ||
                other.isSendingVoice == isSendingVoice) &&
            (identical(other.isCancelSendVoice, isCancelSendVoice) ||
                other.isCancelSendVoice == isCancelSendVoice) &&
            (identical(other.hasWaiter, hasWaiter) ||
                other.hasWaiter == hasWaiter) &&
            (identical(other.waitStart, waitStart) ||
                other.waitStart == waitStart) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSendingVoice,
      isCancelSendVoice, hasWaiter, waitStart, audioPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAudioMsgStateCopyWith<_$_GetAudioMsgState> get copyWith =>
      __$$_GetAudioMsgStateCopyWithImpl<_$_GetAudioMsgState>(this, _$identity);
}

abstract class _GetAudioMsgState implements GetAudioMsgState {
  factory _GetAudioMsgState(
      {bool isSendingVoice,
      bool isCancelSendVoice,
      bool hasWaiter,
      Future<bool>? waitStart,
      String? audioPath}) = _$_GetAudioMsgState;

  @override
  bool get isSendingVoice;
  set isSendingVoice(bool value);
  @override
  bool get isCancelSendVoice;
  set isCancelSendVoice(bool value);
  @override
  bool get hasWaiter;
  set hasWaiter(bool value);
  @override
  Future<bool>? get waitStart;
  set waitStart(Future<bool>? value);
  @override
  String? get audioPath;
  set audioPath(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_GetAudioMsgStateCopyWith<_$_GetAudioMsgState> get copyWith =>
      throw _privateConstructorUsedError;
}
