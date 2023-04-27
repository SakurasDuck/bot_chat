import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_down_message.freezed.dart';
part 'chat_down_message.g.dart';

@freezed
class ChatDownMessage with _$ChatDownMessage {
  const factory ChatDownMessage({
    required String content,
  }) = _ChatDownMessage;

  factory ChatDownMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatDownMessageFromJson(json);
}
