import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/enums.dart';
import '../message.dart';

part 'up_message.freezed.dart';
part 'up_message.g.dart';

///上行消息
@unfreezed
class UpMessage extends UpMessageStatus with _$UpMessage {
  factory UpMessage({
    required SendMessageStatus status,
    required final String content,
    required final Role role,
  }) = _UpMessage;

  factory UpMessage.fromJson(Map<String, dynamic> json) =>
      _$UpMessageFromJson(json);
}
