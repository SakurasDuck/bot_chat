import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/enums.dart';
import '../message.dart';

part 'chat_up_message.freezed.dart';
part 'chat_up_message.g.dart';

///上行消息
@unfreezed
class ChatUpMessage extends UpMessageStatus with _$ChatUpMessage {
  factory ChatUpMessage({
    required SendMessageStatus status,
    required final String content,
    required final Role role,
  }) = _ChatUpMessage;

  factory ChatUpMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatUpMessageFromJson(json);
}
