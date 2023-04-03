// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portrait_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Portrait _$PortraitFromJson(Map<String, dynamic> json) {
  return _Portrait.fromJson(json);
}

/// @nodoc
mixin _$Portrait {
//消息
  List<String> get msgs => throw _privateConstructorUsedError; //画像名称
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortraitCopyWith<Portrait> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortraitCopyWith<$Res> {
  factory $PortraitCopyWith(Portrait value, $Res Function(Portrait) then) =
      _$PortraitCopyWithImpl<$Res, Portrait>;
  @useResult
  $Res call({List<String> msgs, String name});
}

/// @nodoc
class _$PortraitCopyWithImpl<$Res, $Val extends Portrait>
    implements $PortraitCopyWith<$Res> {
  _$PortraitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgs = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      msgs: null == msgs
          ? _value.msgs
          : msgs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortraitCopyWith<$Res> implements $PortraitCopyWith<$Res> {
  factory _$$_PortraitCopyWith(
          _$_Portrait value, $Res Function(_$_Portrait) then) =
      __$$_PortraitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> msgs, String name});
}

/// @nodoc
class __$$_PortraitCopyWithImpl<$Res>
    extends _$PortraitCopyWithImpl<$Res, _$_Portrait>
    implements _$$_PortraitCopyWith<$Res> {
  __$$_PortraitCopyWithImpl(
      _$_Portrait _value, $Res Function(_$_Portrait) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgs = null,
    Object? name = null,
  }) {
    return _then(_$_Portrait(
      msgs: null == msgs
          ? _value._msgs
          : msgs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Portrait implements _Portrait {
  const _$_Portrait({required final List<String> msgs, required this.name})
      : _msgs = msgs;

  factory _$_Portrait.fromJson(Map<String, dynamic> json) =>
      _$$_PortraitFromJson(json);

//消息
  final List<String> _msgs;
//消息
  @override
  List<String> get msgs {
    if (_msgs is EqualUnmodifiableListView) return _msgs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_msgs);
  }

//画像名称
  @override
  final String name;

  @override
  String toString() {
    return 'Portrait(msgs: $msgs, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Portrait &&
            const DeepCollectionEquality().equals(other._msgs, _msgs) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_msgs), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortraitCopyWith<_$_Portrait> get copyWith =>
      __$$_PortraitCopyWithImpl<_$_Portrait>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortraitToJson(
      this,
    );
  }
}

abstract class _Portrait implements Portrait {
  const factory _Portrait(
      {required final List<String> msgs,
      required final String name}) = _$_Portrait;

  factory _Portrait.fromJson(Map<String, dynamic> json) = _$_Portrait.fromJson;

  @override //消息
  List<String> get msgs;
  @override //画像名称
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PortraitCopyWith<_$_Portrait> get copyWith =>
      throw _privateConstructorUsedError;
}
