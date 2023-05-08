import 'package:chat_ui/src/provider/chat/speech_2_text/record_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/types.dart';
import '../../../helpers/temp_file.dart';

part 'get_audio_msg_controller.freezed.dart';
part 'get_audio_msg_controller.g.dart';

@riverpod
class AudioMsgController extends _$AudioMsgController {
  @override
  GetAudioMsgState build() {
    return GetAudioMsgState();
  }

  ///修改状态,通知 UI 刷新
  void modify(GetAudioMsgState Function(GetAudioMsgState state) modify) {
    state = modify(state);
  }

  //开始录音
  Future<bool> startRecordVoice() async {
    final tempFile = await TempFileUtil.generateRandomAppRelativeFile(
        path: 'audio_msg/', fileType: 'm4a');
    modify((state) => state..audioPath = tempFile.path);
    return ref
        .read(recordControllerProvider.notifier)
        .startRecord(tempFile.path);
  }

  //完成录音并发送消息
  Future<void> stopAndHandleAudioRecordResult(SendVoiceMsg sendVoiceMsg) async {
    await ref.read(recordControllerProvider.notifier).stopRecord();
    sendVoiceMsg(
        state.audioPath!,
        Duration(
            milliseconds:
                ref.read(recordControllerProvider).durationByMilliSecond));
  }
}

@Freezed(addImplicitFinal: false)
class GetAudioMsgState with _$GetAudioMsgState {
  factory GetAudioMsgState({
    @Default(false) bool isSendingVoice,
    @Default(false) bool isCancelSendVoice,
    @Default(false) bool hasWaiter,
    @Default(null) Future<bool>? waitStart,
    String? audioPath,
  }) = _GetAudioMsgState;
}
