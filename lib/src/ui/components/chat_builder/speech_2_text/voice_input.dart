import 'package:flutter/material.dart';

typedef SendVoiceMsg = void Function(String path, int duration);

class VoiceMsgInput extends StatelessWidget {
  const VoiceMsgInput({super.key,required this.sendVoiceMsg});

  final SendVoiceMsg sendVoiceMsg;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => GestureDetector(
        onLongPressStart: (details) async {
          if (chatState.waitStart != null) {
            return;
          }
          chatState.waitStart = startRecordVoice();
          final result = await chatState.waitStart!;
          if (result == true) {
            chatState.isSendingVoice = true;
            chatState.markNeedUpdate();
          }
        },
        onLongPressMoveUpdate: (details) {
          if (!chatState.isSendingVoice) {
            return;
          }
          if (details.localOffsetFromOrigin.dy < -115) {
            chatState.isCancelSendVoice = true;
            chatState.markNeedUpdate();
          } else {
            if (chatState.isCancelSendVoice) {
              chatState.isCancelSendVoice = false;
              chatState.markNeedUpdate();
            }
          }
        },
        onLongPressEnd: (details) async {
          if (chatState.hasWaiter) {
            return;
          }
          chatState.hasWaiter = true;

          try {
            final result = await chatState.waitStart!;
            if (result == true) {
              await chatState.stopAndHandleAudioRecordResult();
            }
          } finally {
            chatState.waitStart = null;

            chatState.hasWaiter = false;
          }
        },
        child: Container(
          decoration: BoxDecoration(
              color: chatState.isSendingVoice
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
    );
  }

    //发送语音
  Future<bool> startRecordVoice() async {
    final File file = await FileUtil.generateRandomTempFile(
        path: '/chat/audio/', fileType: 'm4a');
    return chatState.audioRecord!.start(path: file.path);
  }

}
