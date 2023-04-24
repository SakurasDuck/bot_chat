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

ShowMoreBtn _$ShowMoreBtnFromJson(Map<String, dynamic> json) {
  return _ShowMoreBtn.fromJson(json);
}

/// @nodoc
mixin _$ShowMoreBtn {
  bool get show => throw _privateConstructorUsedError;
  String? get lastRecordPointId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowMoreBtnCopyWith<ShowMoreBtn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowMoreBtnCopyWith<$Res> {
  factory $ShowMoreBtnCopyWith(
          ShowMoreBtn value, $Res Function(ShowMoreBtn) then) =
      _$ShowMoreBtnCopyWithImpl<$Res, ShowMoreBtn>;
  @useResult
  $Res call({bool show, String? lastRecordPointId});
}

/// @nodoc
class _$ShowMoreBtnCopyWithImpl<$Res, $Val extends ShowMoreBtn>
    implements $ShowMoreBtnCopyWith<$Res> {
  _$ShowMoreBtnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
    Object? lastRecordPointId = freezed,
  }) {
    return _then(_value.copyWith(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      lastRecordPointId: freezed == lastRecordPointId
          ? _value.lastRecordPointId
          : lastRecordPointId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShowMoreBtnCopyWith<$Res>
    implements $ShowMoreBtnCopyWith<$Res> {
  factory _$$_ShowMoreBtnCopyWith(
          _$_ShowMoreBtn value, $Res Function(_$_ShowMoreBtn) then) =
      __$$_ShowMoreBtnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool show, String? lastRecordPointId});
}

/// @nodoc
class __$$_ShowMoreBtnCopyWithImpl<$Res>
    extends _$ShowMoreBtnCopyWithImpl<$Res, _$_ShowMoreBtn>
    implements _$$_ShowMoreBtnCopyWith<$Res> {
  __$$_ShowMoreBtnCopyWithImpl(
      _$_ShowMoreBtn _value, $Res Function(_$_ShowMoreBtn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
    Object? lastRecordPointId = freezed,
  }) {
    return _then(_$_ShowMoreBtn(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      lastRecordPointId: freezed == lastRecordPointId
          ? _value.lastRecordPointId
          : lastRecordPointId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowMoreBtn implements _ShowMoreBtn {
  const _$_ShowMoreBtn({required this.show, required this.lastRecordPointId});

  factory _$_ShowMoreBtn.fromJson(Map<String, dynamic> json) =>
      _$$_ShowMoreBtnFromJson(json);

  @override
  final bool show;
  @override
  final String? lastRecordPointId;

  @override
  String toString() {
    return 'ShowMoreBtn(show: $show, lastRecordPointId: $lastRecordPointId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowMoreBtnCopyWith<_$_ShowMoreBtn> get copyWith =>
      __$$_ShowMoreBtnCopyWithImpl<_$_ShowMoreBtn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowMoreBtnToJson(
      this,
    );
  }
}

abstract class _ShowMoreBtn implements ShowMoreBtn {
  const factory _ShowMoreBtn(
      {required final bool show,
      required final String? lastRecordPointId}) = _$_ShowMoreBtn;

  factory _ShowMoreBtn.fromJson(Map<String, dynamic> json) =
      _$_ShowMoreBtn.fromJson;

  @override
  bool get show;
  @override
  String? get lastRecordPointId;
  @override
  @JsonKey(ignore: true)
  _$$_ShowMoreBtnCopyWith<_$_ShowMoreBtn> get copyWith =>
      throw _privateConstructorUsedError;
}
