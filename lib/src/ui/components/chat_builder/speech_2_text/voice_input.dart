import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/types.dart';
import '../../../../provider/chat/speech_2_text/get_audio_msg_controller.dart';

class VoiceMsgInput extends StatelessWidget {
  const VoiceMsgInput({super.key, required this.sendVoiceMsg});

  final SendVoiceMsg sendVoiceMsg;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => GestureDetector(
        onLongPressStart: (details) async {
          final state = ref.read(audioMsgControllerProvider);
          final provider = ref.read(audioMsgControllerProvider.notifier);
          if (state.waitStart != null) {
            return;
          }
          state.waitStart = provider.startRecordVoice();
          final result = await state.waitStart!;
          if (result == true) {
            provider.modify((state) => state..isSendingVoice = true);
          }
        },
        onLongPressMoveUpdate: (details) {
          final state = ref.read(audioMsgControllerProvider);
          final provider = ref.read(audioMsgControllerProvider.notifier);
          if (!state.isSendingVoice) {
            return;
          }
          if (details.localOffsetFromOrigin.dy < -115) {
            provider.modify((state) => state..isCancelSendVoice = true);
          } else {
            if (state.isCancelSendVoice) {
              provider.modify((state) => state..isCancelSendVoice = false);
            }
          }
        },
        onLongPressEnd: (details) async {
          final state = ref.read(audioMsgControllerProvider);
          final provider = ref.read(audioMsgControllerProvider.notifier);
          if (state.hasWaiter) {
            return;
          }
          state.hasWaiter = true;

          try {
            final result = await state.waitStart!;
            if (result == true) {
              await provider.stopAndHandleAudioRecordResult(sendVoiceMsg);
            }
          } finally {
            provider.modify((state) {
              state.waitStart = null;
              state.hasWaiter = false;
              return state;
            });
          }
        },
        child: Consumer(
          builder: (context, ref, child) => Container(
            decoration: BoxDecoration(
                color: ref.watch(audioMsgControllerProvider).isSendingVoice
                    ? const Color(0xccffffff)
                    : const Color(0xccd7d5d8),
                borderRadius: BorderRadius.circular(22)),
            margin: const EdgeInsets.only(bottom: 25, top: 25),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 100, minHeight: 100),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  '按住 说话',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff565656),
                    fontSize: 43,
                    height: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
