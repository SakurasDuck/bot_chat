import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../helpers/list_audio_player_controller.dart';

part 'audio_player_controller.g.dart';

///语音播放控制器(只要作用协调同时只能播放一个语音)
@riverpod
class AudioPlayerController extends _$AudioPlayerController {
  @override
  ListAudioPlayer build() {
    return ListAudioPlayer();
  }
}
