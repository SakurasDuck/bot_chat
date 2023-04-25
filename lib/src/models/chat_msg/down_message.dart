import 'package:freezed_annotation/freezed_annotation.dart';

part 'down_message.freezed.dart';
part 'down_message.g.dart';

@freezed
class DownMessage with _$DownMessage {
  const factory DownMessage({
    required String content,
  }) = _DownMessage;

  factory DownMessage.fromJson(Map<String, dynamic> json) =>
      _$DownMessageFromJson(json);
}
