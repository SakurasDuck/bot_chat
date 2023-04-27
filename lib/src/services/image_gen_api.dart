import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import '../config/open_api_key/get_api_key.dart';

part 'image_gen_api.freezed.dart';
part 'image_gen_api.g.dart';

class ImageGenAPI {
  const ImageGenAPI(this.host);
  static const String _path = '/v1/images/generations';

  final String host;

  Future<ImageGenRes> gen(ImageGenReqBody req) async {
    final client = GetIt.instance.get<Client>();
    final response = await client.post(Uri.parse('$host$_path'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${GetIt.instance.get<GetAPIKey>().call()}'
        },
        body: jsonEncode(req));
    if (response.statusCode == 200) {
      return ImageGenRes.fromJson(
          jsonDecode(const Utf8Decoder().convert(response.bodyBytes)));
    } else {
      throw Exception('Failed to load models');
    }
  }
}

@freezed
class ImageGenReqBody with _$ImageGenReqBody {
  const factory ImageGenReqBody({
    required String prompt,
    @Default(1) @Assert('n>0 && n<=10', 'n must be between 1 and 10') int n,
    @Default('1024x1024')
    @Assert('size=="1024x1024" || size=="512x512" || size=="256x256"', 'size must be 1024x1024, 512x512 or 256x256')
        String size,
    @Default('url')
    @Assert('response_format=="url" || response_format=="b64_json"')
        String response_format,
    String? user,
  }) = _ImageGenReqBody;

  factory ImageGenReqBody.fromJson(Map<String, dynamic> json) =>
      _$ImageGenReqBodyFromJson(json);
}

@freezed
class ImageGenRes with _$ImageGenRes {
  const factory ImageGenRes({
    required int created,
    required List<GenImage> data,
  }) = _ImageGenRes;

  factory ImageGenRes.fromJson(Map<String, dynamic> json) =>
      _$ImageGenResFromJson(json);
}

@freezed
class GenImage with _$GenImage {
  const factory GenImage({
    required String url,
  }) = _GenImage;

  factory GenImage.fromJson(Map<String, dynamic> json) =>
      _$GenImageFromJson(json);
}
