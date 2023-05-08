import 'package:chat_ui/src/provider/chat/speech_2_text/get_audio_msg_controller.dart';
import 'package:chat_ui/src/provider/chat/speech_2_text/record_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'audio_record_wave_form.dart';

class RecordingWrap extends StatelessWidget {
  const RecordingWrap({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, ref, _) => Stack(
              children: [
                child,
                if (ref.watch(recordControllerProvider).isRecording)
                  Positioned.fill(
                      child: Material(
                    color: const Color(0x00ffffff),
                    child: IgnorePointer(
                      child: Consumer(
                          builder: (context, ref, child) => Container(
                                alignment: Alignment.bottomCenter,
                                child: ref
                                        .watch(audioMsgControllerProvider)
                                        .isCancelSendVoice
                                    ? const CancelVoice()
                                    : SendVoice(
                                        waveGet: () =>
                                            ref
                                                .read(recordControllerProvider)
                                                .amplitude
                                                ?.current ??
                                            0,
                                        isRecording: ref
                                            .watch(recordControllerProvider)
                                            .isRecording,
                                      ),
                              )),
                    ),
                  ))
              ],
            ));
  }
}

class SendVoice extends StatelessWidget {
  final double Function() waveGet;
  final bool isRecording;

  const SendVoice({
    required this.waveGet,
    required this.isRecording,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(22)),
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          height: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 80,
                width: 250,
                child:
                    AudioRecordWaveform(waveGet: waveGet, enable: isRecording),
              ),
              const Text(
                '手指上滑,取消发送',
                style: TextStyle(color: Colors.white, fontSize: 45),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CancelVoice extends StatelessWidget {
  const CancelVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(22)),
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          height: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 80,
                width: 70,
                child: Image.asset(
                  'assets/images/cancel.png',
                  color: const Color(0xffffffff),
                  fit: BoxFit.fill,
                  height: 70,
                  width: 70,
                ),
              ),
              const Text('松开手指,取消发送',
                  style: TextStyle(color: Colors.white, fontSize: 45))
            ],
          ),
        ),
      ),
    );
  }
}
