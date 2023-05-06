import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_down_message.g.dart';
part 'text_down_message.freezed.dart';

@freezed
class TextDownMessage with _$TextDownMessage {
  const factory TextDownMessage({
    required String text,
  }) = _TextDownMessage;

  factory TextDownMessage.fromJson(Map<String, dynamic> json) =>
      _$TextDownMessageFromJson(json);
}
