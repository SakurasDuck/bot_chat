import 'package:flutter/material.dart';

import '../../../../../models/speech_2_text/audio_up_message.dart';

class VoiceUpMsgBuilder extends StatelessWidget {
  const VoiceUpMsgBuilder({super.key, required this.upMsg});

  final AudioUpMessage upMsg;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          'path: ${upMsg.audioPath},length: ${upMsg.audioLength.inSeconds}'),
    );
  }
}
