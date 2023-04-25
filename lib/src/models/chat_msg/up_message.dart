import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/enums.dart';
import '../message.dart';

part 'up_message.freezed.dart';
part 'up_message.g.dart';

///上行消息
@freezed
class UpMessage  extends UpMessageStatus with _$UpMessage {
  const factory UpMessage({
    required SendMessageStatus status,
    required String content,
    required Role role,
  }) = _UpMessage;

  factory UpMessage.fromJson(Map<String, dynamic> json) =>
      _$UpMessageFromJson(json);
}
