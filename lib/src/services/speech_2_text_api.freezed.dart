// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speech_2_text_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Speech2TextReqBody _$Speech2TextReqBodyFromJson(Map<String, dynamic> json) {
  return _Speech2TextReqBody.fromJson(json);
}

/// @nodoc
mixin _$Speech2TextReqBody {
  String get file => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  @Assert('n>=0 && n<=1', 'n must be between 0 and 1')
  double get temperature => throw _privateConstructorUsedError;
  String? get prompt => throw _privateConstructorUsedError;
  @Assert(
      'response_format=="json" ||response_format=="text" || response_format=="srt" || response_format=="verbose_json"|| response_format=="vtt"')
  String get response_format => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Speech2TextReqBodyCopyWith<Speech2TextReqBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Speech2TextReqBodyCopyWith<$Res> {
  factory $Speech2TextReqBodyCopyWith(
          Speech2TextReqBody value, $Res Function(Speech2TextReqBody) then) =
      _$Speech2TextReqBodyCopyWithImpl<$Res, Speech2TextReqBody>;
  @useResult
  $Res call(
      {String file,
      String model,
      @Assert('n>=0 && n<=1', 'n must be between 0 and 1')
          double temperature,
      String? prompt,
      @Assert('response_format=="json" ||response_format=="text" || response_format=="srt" || response_format=="verbose_json"|| response_format=="vtt"')
          String response_format,
      String? language});
}

/// @nodoc
class _$Speech2TextReqBodyCopyWithImpl<$Res, $Val extends Speech2TextReqBody>
    implements $Speech2TextReqBodyCopyWith<$Res> {
  _$Speech2TextReqBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? model = null,
    Object? temperature = null,
    Object? prompt = freezed,
    Object? response_format = null,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      response_format: null == response_format
          ? _value.response_format
          : response_format // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_Speech2TextReqBodyCopyWith<$Res>
    implements $Speech2TextReqBodyCopyWith<$Res> {
  factory _$$_Speech2TextReqBodyCopyWith(_$_Speech2TextReqBody value,
          $Res Function(_$_Speech2TextReqBody) then) =
      __$$_Speech2TextReqBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String file,
      String model,
      @Assert('n>=0 && n<=1', 'n must be between 0 and 1')
          double temperature,
      String? prompt,
      @Assert('response_format=="json" ||response_format=="text" || response_format=="srt" || response_format=="verbose_json"|| response_format=="vtt"')
          String response_format,
      String? language});
}

/// @nodoc
class __$$_Speech2TextReqBodyCopyWithImpl<$Res>
    extends _$Speech2TextReqBodyCopyWithImpl<$Res, _$_Speech2TextReqBody>
    implements _$$_Speech2TextReqBodyCopyWith<$Res> {
  __$$_Speech2TextReqBodyCopyWithImpl(
      _$_Speech2TextReqBody _value, $Res Function(_$_Speech2TextReqBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? model = null,
    Object? temperature = null,
    Object? prompt = freezed,
    Object? response_format = null,
    Object? language = freezed,
  }) {
    return _then(_$_Speech2TextReqBody(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      response_format: null == response_format
          ? _value.response_format
          : response_format // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Speech2TextReqBody implements _Speech2TextReqBody {
  const _$_Speech2TextReqBody(
      {required this.file,
      required this.model,
      @Assert('n>=0 && n<=1', 'n must be between 0 and 1')
          this.temperature = 0,
      this.prompt,
      @Assert('response_format=="json" ||response_format=="text" || response_format=="srt" || response_format=="verbose_json"|| response_format=="vtt"')
          this.response_format = 'json',
      this.language});

  factory _$_Speech2TextReqBody.fromJson(Map<String, dynamic> json) =>
      _$$_Speech2TextReqBodyFromJson(json);

  @override
  final String file;
  @override
  final String model;
  @override
  @JsonKey()
  @Assert('n>=0 && n<=1', 'n must be between 0 and 1')
  final double temperature;
  @override
  final String? prompt;
  @override
  @JsonKey()
  @Assert(
      'response_format=="json" ||response_format=="text" || response_format=="srt" || response_format=="verbose_json"|| response_format=="vtt"')
  final String response_format;
  @override
  final String? language;

  @override
  String toString() {
    return 'Speech2TextReqBody(file: $file, model: $model, temperature: $temperature, prompt: $prompt, response_format: $response_format, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Speech2TextReqBody &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.response_format, response_format) ||
                other.response_format == response_format) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, file, model, temperature, prompt, response_format, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Speech2TextReqBodyCopyWith<_$_Speech2TextReqBody> get copyWith =>
      __$$_Speech2TextReqBodyCopyWithImpl<_$_Speech2TextReqBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Speech2TextReqBodyToJson(
      this,
    );
  }
}

abstract class _Speech2TextReqBody implements Speech2TextReqBody {
  const factory _Speech2TextReqBody(
      {required final String file,
      required final String model,
      @Assert('n>=0 && n<=1', 'n must be between 0 and 1')
          final double temperature,
      final String? prompt,
      @Assert('response_format=="json" ||response_format=="text" || response_format=="srt" || response_format=="verbose_json"|| response_format=="vtt"')
          final String response_format,
      final String? language}) = _$_Speech2TextReqBody;

  factory _Speech2TextReqBody.fromJson(Map<String, dynamic> json) =
      _$_Speech2TextReqBody.fromJson;

  @override
  String get file;
  @override
  String get model;
  @override
  @Assert('n>=0 && n<=1', 'n must be between 0 and 1')
  double get temperature;
  @override
  String? get prompt;
  @override
  @Assert(
      'response_format=="json" ||response_format=="text" || response_format=="srt" || response_format=="verbose_json"|| response_format=="vtt"')
  String get response_format;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$_Speech2TextReqBodyCopyWith<_$_Speech2TextReqBody> get copyWith =>
      throw _privateConstructorUsedError;
}

Speech2TextRes _$Speech2TextResFromJson(Map<String, dynamic> json) {
  return _Speech2TextRes.fromJson(json);
}

/// @nodoc
mixin _$Speech2TextRes {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Speech2TextResCopyWith<Speech2TextRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Speech2TextResCopyWith<$Res> {
  factory $Speech2TextResCopyWith(
          Speech2TextRes value, $Res Function(Speech2TextRes) then) =
      _$Speech2TextResCopyWithImpl<$Res, Speech2TextRes>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$Speech2TextResCopyWithImpl<$Res, $Val extends Speech2TextRes>
    implements $Speech2TextResCopyWith<$Res> {
  _$Speech2TextResCopyWithImpl(this._value, this._then);

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
abstract class _$$_Speech2TextResCopyWith<$Res>
    implements $Speech2TextResCopyWith<$Res> {
  factory _$$_Speech2TextResCopyWith(
          _$_Speech2TextRes value, $Res Function(_$_Speech2TextRes) then) =
      __$$_Speech2TextResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_Speech2TextResCopyWithImpl<$Res>
    extends _$Speech2TextResCopyWithImpl<$Res, _$_Speech2TextRes>
    implements _$$_Speech2TextResCopyWith<$Res> {
  __$$_Speech2TextResCopyWithImpl(
      _$_Speech2TextRes _value, $Res Function(_$_Speech2TextRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_Speech2TextRes(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Speech2TextRes implements _Speech2TextRes {
  const _$_Speech2TextRes({required this.text});

  factory _$_Speech2TextRes.fromJson(Map<String, dynamic> json) =>
      _$$_Speech2TextResFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'Speech2TextRes(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Speech2TextRes &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Speech2TextResCopyWith<_$_Speech2TextRes> get copyWith =>
      __$$_Speech2TextResCopyWithImpl<_$_Speech2TextRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Speech2TextResToJson(
      this,
    );
  }
}

abstract class _Speech2TextRes implements Speech2TextRes {
  const factory _Speech2TextRes({required final String text}) =
      _$_Speech2TextRes;

  factory _Speech2TextRes.fromJson(Map<String, dynamic> json) =
      _$_Speech2TextRes.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_Speech2TextResCopyWith<_$_Speech2TextRes> get copyWith =>
      throw _privateConstructorUsedError;
}
