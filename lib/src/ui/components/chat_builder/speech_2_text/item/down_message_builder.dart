import 'package:bot_toast/bot_toast.dart';
import 'package:extended_text/extended_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../models/speech_2_text/text_down_message.dart';

class Speech2TextDownMessageContent extends StatelessWidget {
  const Speech2TextDownMessageContent({required this.downMsg, super.key});

  final TextDownMessage downMsg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: downMsg.text));
        BotToast.showText(text: '已复制代码到剪切板');
      },
      child: Builder(
          builder: (context) => ExtendedText(
                downMsg.text,
                style: const TextStyle(
                  fontSize: 16,
                ),
              )),
    );
  }
}
