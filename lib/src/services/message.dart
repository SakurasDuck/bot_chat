import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String role,
    required String content,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@freezed
class Choices with _$Choices {
  const factory Choices({
    required int index,
    required Message message,
    required String finish_reason,
  }) = _Choices;

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}

@freezed
class Usage with _$Usage {
  const factory Usage({
    required int prompt_tokens,
    required int completion_tokens,
    required int total_tokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}

@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    required String id,
    required String object,
    required int created,
    required Usage usage,
    required List<Choices> choices,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) => _$ChatResponseFromJson(json);
}

@freezed
class ChatRequest with _$ChatRequest {
  const factory ChatRequest({
    required String model,
    required List<ReqMessage> messages,
  }) = _ChatRequest;

  factory ChatRequest.fromJson(Map<String, dynamic> json) => _$ChatRequestFromJson(json);
}

@freezed
class ReqMessage with _$ReqMessage {
  const factory ReqMessage({
    required String content,
    required String role,
  }) = _ReqMessage;

  factory ReqMessage.fromJson(Map<String, dynamic> json) => _$ReqMessageFromJson(json);
}
