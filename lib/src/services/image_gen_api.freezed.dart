// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_gen_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageGenReqBody _$ImageGenReqBodyFromJson(Map<String, dynamic> json) {
  return _ImageGenReqBody.fromJson(json);
}

/// @nodoc
mixin _$ImageGenReqBody {
  String get prompt => throw _privateConstructorUsedError;
  @Assert('n>0 && n<=10', 'n must be between 1 and 10')
  int get n => throw _privateConstructorUsedError;
  @Assert('size=="1024x1024" || size=="512x512" || size=="256x256"',
      'size must be 1024x1024, 512x512 or 256x256')
  String get size => throw _privateConstructorUsedError;
  @Assert('response_format=="url" || response_format=="b64_json"')
  String get response_format => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageGenReqBodyCopyWith<ImageGenReqBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenReqBodyCopyWith<$Res> {
  factory $ImageGenReqBodyCopyWith(
          ImageGenReqBody value, $Res Function(ImageGenReqBody) then) =
      _$ImageGenReqBodyCopyWithImpl<$Res, ImageGenReqBody>;
  @useResult
  $Res call(
      {String prompt,
      @Assert('n>0 && n<=10', 'n must be between 1 and 10')
          int n,
      @Assert('size=="1024x1024" || size=="512x512" || size=="256x256"', 'size must be 1024x1024, 512x512 or 256x256')
          String size,
      @Assert('response_format=="url" || response_format=="b64_json"')
          String response_format,
      String? user});
}

/// @nodoc
class _$ImageGenReqBodyCopyWithImpl<$Res, $Val extends ImageGenReqBody>
    implements $ImageGenReqBodyCopyWith<$Res> {
  _$ImageGenReqBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? n = null,
    Object? size = null,
    Object? response_format = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      response_format: null == response_format
          ? _value.response_format
          : response_format // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageGenReqBodyCopyWith<$Res>
    implements $ImageGenReqBodyCopyWith<$Res> {
  factory _$$_ImageGenReqBodyCopyWith(
          _$_ImageGenReqBody value, $Res Function(_$_ImageGenReqBody) then) =
      __$$_ImageGenReqBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String prompt,
      @Assert('n>0 && n<=10', 'n must be between 1 and 10')
          int n,
      @Assert('size=="1024x1024" || size=="512x512" || size=="256x256"', 'size must be 1024x1024, 512x512 or 256x256')
          String size,
      @Assert('response_format=="url" || response_format=="b64_json"')
          String response_format,
      String? user});
}

/// @nodoc
class __$$_ImageGenReqBodyCopyWithImpl<$Res>
    extends _$ImageGenReqBodyCopyWithImpl<$Res, _$_ImageGenReqBody>
    implements _$$_ImageGenReqBodyCopyWith<$Res> {
  __$$_ImageGenReqBodyCopyWithImpl(
      _$_ImageGenReqBody _value, $Res Function(_$_ImageGenReqBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? n = null,
    Object? size = null,
    Object? response_format = null,
    Object? user = freezed,
  }) {
    return _then(_$_ImageGenReqBody(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      response_format: null == response_format
          ? _value.response_format
          : response_format // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageGenReqBody implements _ImageGenReqBody {
  const _$_ImageGenReqBody(
      {required this.prompt,
      @Assert('n>0 && n<=10', 'n must be between 1 and 10')
          this.n = 1,
      @Assert('size=="1024x1024" || size=="512x512" || size=="256x256"', 'size must be 1024x1024, 512x512 or 256x256')
          this.size = '1024x1024',
      @Assert('response_format=="url" || response_format=="b64_json"')
          this.response_format = 'url',
      this.user});

  factory _$_ImageGenReqBody.fromJson(Map<String, dynamic> json) =>
      _$$_ImageGenReqBodyFromJson(json);

  @override
  final String prompt;
  @override
  @JsonKey()
  @Assert('n>0 && n<=10', 'n must be between 1 and 10')
  final int n;
  @override
  @JsonKey()
  @Assert('size=="1024x1024" || size=="512x512" || size=="256x256"',
      'size must be 1024x1024, 512x512 or 256x256')
  final String size;
  @override
  @JsonKey()
  @Assert('response_format=="url" || response_format=="b64_json"')
  final String response_format;
  @override
  final String? user;

  @override
  String toString() {
    return 'ImageGenReqBody(prompt: $prompt, n: $n, size: $size, response_format: $response_format, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageGenReqBody &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.response_format, response_format) ||
                other.response_format == response_format) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, prompt, n, size, response_format, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageGenReqBodyCopyWith<_$_ImageGenReqBody> get copyWith =>
      __$$_ImageGenReqBodyCopyWithImpl<_$_ImageGenReqBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageGenReqBodyToJson(
      this,
    );
  }
}

abstract class _ImageGenReqBody implements ImageGenReqBody {
  const factory _ImageGenReqBody(
      {required final String prompt,
      @Assert('n>0 && n<=10', 'n must be between 1 and 10')
          final int n,
      @Assert('size=="1024x1024" || size=="512x512" || size=="256x256"', 'size must be 1024x1024, 512x512 or 256x256')
          final String size,
      @Assert('response_format=="url" || response_format=="b64_json"')
          final String response_format,
      final String? user}) = _$_ImageGenReqBody;

  factory _ImageGenReqBody.fromJson(Map<String, dynamic> json) =
      _$_ImageGenReqBody.fromJson;

  @override
  String get prompt;
  @override
  @Assert('n>0 && n<=10', 'n must be between 1 and 10')
  int get n;
  @override
  @Assert('size=="1024x1024" || size=="512x512" || size=="256x256"',
      'size must be 1024x1024, 512x512 or 256x256')
  String get size;
  @override
  @Assert('response_format=="url" || response_format=="b64_json"')
  String get response_format;
  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$_ImageGenReqBodyCopyWith<_$_ImageGenReqBody> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageGenRes _$ImageGenResFromJson(Map<String, dynamic> json) {
  return _ImageGenRes.fromJson(json);
}

/// @nodoc
mixin _$ImageGenRes {
  int get created => throw _privateConstructorUsedError;
  List<GenImage> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageGenResCopyWith<ImageGenRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenResCopyWith<$Res> {
  factory $ImageGenResCopyWith(
          ImageGenRes value, $Res Function(ImageGenRes) then) =
      _$ImageGenResCopyWithImpl<$Res, ImageGenRes>;
  @useResult
  $Res call({int created, List<GenImage> data});
}

/// @nodoc
class _$ImageGenResCopyWithImpl<$Res, $Val extends ImageGenRes>
    implements $ImageGenResCopyWith<$Res> {
  _$ImageGenResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GenImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageGenResCopyWith<$Res>
    implements $ImageGenResCopyWith<$Res> {
  factory _$$_ImageGenResCopyWith(
          _$_ImageGenRes value, $Res Function(_$_ImageGenRes) then) =
      __$$_ImageGenResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int created, List<GenImage> data});
}

/// @nodoc
class __$$_ImageGenResCopyWithImpl<$Res>
    extends _$ImageGenResCopyWithImpl<$Res, _$_ImageGenRes>
    implements _$$_ImageGenResCopyWith<$Res> {
  __$$_ImageGenResCopyWithImpl(
      _$_ImageGenRes _value, $Res Function(_$_ImageGenRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? data = null,
  }) {
    return _then(_$_ImageGenRes(
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GenImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageGenRes implements _ImageGenRes {
  const _$_ImageGenRes(
      {required this.created, required final List<GenImage> data})
      : _data = data;

  factory _$_ImageGenRes.fromJson(Map<String, dynamic> json) =>
      _$$_ImageGenResFromJson(json);

  @override
  final int created;
  final List<GenImage> _data;
  @override
  List<GenImage> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ImageGenRes(created: $created, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageGenRes &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, created, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageGenResCopyWith<_$_ImageGenRes> get copyWith =>
      __$$_ImageGenResCopyWithImpl<_$_ImageGenRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageGenResToJson(
      this,
    );
  }
}

abstract class _ImageGenRes implements ImageGenRes {
  const factory _ImageGenRes(
      {required final int created,
      required final List<GenImage> data}) = _$_ImageGenRes;

  factory _ImageGenRes.fromJson(Map<String, dynamic> json) =
      _$_ImageGenRes.fromJson;

  @override
  int get created;
  @override
  List<GenImage> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ImageGenResCopyWith<_$_ImageGenRes> get copyWith =>
      throw _privateConstructorUsedError;
}

GenImage _$GenImageFromJson(Map<String, dynamic> json) {
  return _GenImage.fromJson(json);
}

/// @nodoc
mixin _$GenImage {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenImageCopyWith<GenImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenImageCopyWith<$Res> {
  factory $GenImageCopyWith(GenImage value, $Res Function(GenImage) then) =
      _$GenImageCopyWithImpl<$Res, GenImage>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$GenImageCopyWithImpl<$Res, $Val extends GenImage>
    implements $GenImageCopyWith<$Res> {
  _$GenImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenImageCopyWith<$Res> implements $GenImageCopyWith<$Res> {
  factory _$$_GenImageCopyWith(
          _$_GenImage value, $Res Function(_$_GenImage) then) =
      __$$_GenImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_GenImageCopyWithImpl<$Res>
    extends _$GenImageCopyWithImpl<$Res, _$_GenImage>
    implements _$$_GenImageCopyWith<$Res> {
  __$$_GenImageCopyWithImpl(
      _$_GenImage _value, $Res Function(_$_GenImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_GenImage(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenImage implements _GenImage {
  const _$_GenImage({required this.url});

  factory _$_GenImage.fromJson(Map<String, dynamic> json) =>
      _$$_GenImageFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'GenImage(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenImage &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenImageCopyWith<_$_GenImage> get copyWith =>
      __$$_GenImageCopyWithImpl<_$_GenImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenImageToJson(
      this,
    );
  }
}

abstract class _GenImage implements GenImage {
  const factory _GenImage({required final String url}) = _$_GenImage;

  factory _GenImage.fromJson(Map<String, dynamic> json) = _$_GenImage.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_GenImageCopyWith<_$_GenImage> get copyWith =>
      throw _privateConstructorUsedError;
}
