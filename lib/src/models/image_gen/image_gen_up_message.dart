import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/enums.dart';
import '../message.dart';

part 'image_gen_up_message.freezed.dart';
part 'image_gen_up_message.g.dart';

///上行消息
@unfreezed
class ImageGenUpMessage extends UpMessageStatus with _$ImageGenUpMessage {
  factory ImageGenUpMessage({
    required SendMessageStatus status,
    required final String content,
  }) = _ImageGenUpMessage;

  factory ImageGenUpMessage.fromJson(Map<String, dynamic> json) =>
      _$ImageGenUpMessageFromJson(json);
}
