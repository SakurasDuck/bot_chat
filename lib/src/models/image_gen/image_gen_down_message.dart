import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_gen_down_message.freezed.dart';
part 'image_gen_down_message.g.dart';

@freezed
class ImageGenDownMessage with _$ImageGenDownMessage {
  const factory ImageGenDownMessage({
     String? url,
     String? base64,
  }) = _ImageGenDownMessage;

  factory ImageGenDownMessage.fromJson(Map<String, dynamic> json) =>
      _$ImageGenDownMessageFromJson(json);
}
