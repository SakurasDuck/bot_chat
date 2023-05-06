import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/enums.dart';
import '../message.dart';

part 'audio_up_message.g.dart';
part 'audio_up_message.freezed.dart';

@unfreezed
class AudioUpMessage extends UpMessageStatus with _$AudioUpMessage {
  factory AudioUpMessage({
    required final String audioPath,
    required final Duration audioLength,
    required SendMessageStatus status,
  }) = _AudioUpMessage;

  factory AudioUpMessage.fromJson(Map<String, dynamic> json) =>
      _$AudioUpMessageFromJson(json);
}

@freezed
class AudioModel with _$AudioModel {
  const factory AudioModel({
    required final String audioPath,
    required final Duration audioLength,
  }) = _AudioModel;  

  factory AudioModel.fromJson(Map<String, dynamic> json) =>
      _$AudioModelFromJson(json);
}