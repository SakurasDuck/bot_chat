import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:chat_ui/src/provider/chat/speech_2_text/record_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
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
    final permission = await Permission.microphone.request();
    if (permission != PermissionStatus.granted) {
      BotToast.showText(text: '请授予录音权限');
      return false;
    }
    return ref.read(recordControllerProvider.notifier).startRecord();
  }

  //完成录音并发送消息
  Future<void> stopAndHandleAudioRecordResult(SendVoiceMsg sendVoiceMsg) async {
    final result =
        await ref.read(recordControllerProvider.notifier).stopRecord();
    modify((state) => state..audioPath = result);
    print(
        '-----------------------${state.audioPath}------------${File(state.audioPath!).existsSync()}');
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
