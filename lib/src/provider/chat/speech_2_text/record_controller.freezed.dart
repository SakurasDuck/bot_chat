// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordState {
  record_enum.Record get record => throw _privateConstructorUsedError;
  set record(record_enum.Record value) => throw _privateConstructorUsedError;
  bool get isRecording => throw _privateConstructorUsedError;
  set isRecording(bool value) => throw _privateConstructorUsedError;
  int get durationByMilliSecond => throw _privateConstructorUsedError;
  set durationByMilliSecond(int value) => throw _privateConstructorUsedError;
  record_enum.Amplitude? get amplitude => throw _privateConstructorUsedError;
  set amplitude(record_enum.Amplitude? value) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordStateCopyWith<RecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordStateCopyWith<$Res> {
  factory $RecordStateCopyWith(
          RecordState value, $Res Function(RecordState) then) =
      _$RecordStateCopyWithImpl<$Res, RecordState>;
  @useResult
  $Res call(
      {record_enum.Record record,
      bool isRecording,
      int durationByMilliSecond,
      record_enum.Amplitude? amplitude});
}

/// @nodoc
class _$RecordStateCopyWithImpl<$Res, $Val extends RecordState>
    implements $RecordStateCopyWith<$Res> {
  _$RecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
    Object? isRecording = null,
    Object? durationByMilliSecond = null,
    Object? amplitude = freezed,
  }) {
    return _then(_value.copyWith(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as record_enum.Record,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      durationByMilliSecond: null == durationByMilliSecond
          ? _value.durationByMilliSecond
          : durationByMilliSecond // ignore: cast_nullable_to_non_nullable
              as int,
      amplitude: freezed == amplitude
          ? _value.amplitude
          : amplitude // ignore: cast_nullable_to_non_nullable
              as record_enum.Amplitude?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecordStateCopyWith<$Res>
    implements $RecordStateCopyWith<$Res> {
  factory _$$_RecordStateCopyWith(
          _$_RecordState value, $Res Function(_$_RecordState) then) =
      __$$_RecordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {record_enum.Record record,
      bool isRecording,
      int durationByMilliSecond,
      record_enum.Amplitude? amplitude});
}

/// @nodoc
class __$$_RecordStateCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$_RecordState>
    implements _$$_RecordStateCopyWith<$Res> {
  __$$_RecordStateCopyWithImpl(
      _$_RecordState _value, $Res Function(_$_RecordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
    Object? isRecording = null,
    Object? durationByMilliSecond = null,
    Object? amplitude = freezed,
  }) {
    return _then(_$_RecordState(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as record_enum.Record,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      durationByMilliSecond: null == durationByMilliSecond
          ? _value.durationByMilliSecond
          : durationByMilliSecond // ignore: cast_nullable_to_non_nullable
              as int,
      amplitude: freezed == amplitude
          ? _value.amplitude
          : amplitude // ignore: cast_nullable_to_non_nullable
              as record_enum.Amplitude?,
    ));
  }
}

/// @nodoc

class _$_RecordState implements _RecordState {
  _$_RecordState(
      {required this.record,
      this.isRecording = false,
      this.durationByMilliSecond = 0,
      this.amplitude});

  @override
  record_enum.Record record;
  @override
  @JsonKey()
  bool isRecording;
  @override
  @JsonKey()
  int durationByMilliSecond;
  @override
  record_enum.Amplitude? amplitude;

  @override
  String toString() {
    return 'RecordState(record: $record, isRecording: $isRecording, durationByMilliSecond: $durationByMilliSecond, amplitude: $amplitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordState &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.durationByMilliSecond, durationByMilliSecond) ||
                other.durationByMilliSecond == durationByMilliSecond) &&
            (identical(other.amplitude, amplitude) ||
                other.amplitude == amplitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, record, isRecording, durationByMilliSecond, amplitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordStateCopyWith<_$_RecordState> get copyWith =>
      __$$_RecordStateCopyWithImpl<_$_RecordState>(this, _$identity);
}

abstract class _RecordState implements RecordState {
  factory _RecordState(
      {required record_enum.Record record,
      bool isRecording,
      int durationByMilliSecond,
      record_enum.Amplitude? amplitude}) = _$_RecordState;

  @override
  record_enum.Record get record;
  set record(record_enum.Record value);
  @override
  bool get isRecording;
  set isRecording(bool value);
  @override
  int get durationByMilliSecond;
  set durationByMilliSecond(int value);
  @override
  record_enum.Amplitude? get amplitude;
  set amplitude(record_enum.Amplitude? value);
  @override
  @JsonKey(ignore: true)
  _$$_RecordStateCopyWith<_$_RecordState> get copyWith =>
      throw _privateConstructorUsedError;
}
