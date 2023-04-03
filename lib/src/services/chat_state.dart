import 'package:chat_ui/src/services/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';
part 'chat_state.g.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required String msgId,
    required int createTimeStamp,
    SendMessage? fromMe,
    ChatResponse? fromBot,
  }) = _ChatState;

  factory ChatState.fromJson(Map<String, dynamic> json) =>
      _$ChatStateFromJson(json);
}

@freezed
class SendMessage with _$SendMessage {
  const factory SendMessage({
    required ReqMessage message,
    required SendMessageStatus status,
  }) = _SendMessage;

  factory SendMessage.fromJson(Map<String, dynamic> json) =>
      _$SendMessageFromJson(json);
}

enum SendMessageStatus { SENDING, SENT, ERROR }
