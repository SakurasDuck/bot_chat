import 'package:bot_toast/bot_toast.dart';
import 'package:extended_text/extended_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../models/chat_msg/down_message.dart';
import '../../../../widgets/markdow_code_builder.dart';

class DownMessageContent extends StatelessWidget {
  const DownMessageContent({required this.downMsg, super.key});

  final DownMessage downMsg;

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => ExtendedText(
              downMsg.content,
              style: const TextStyle(
                fontSize: 16,
              ),
              onSpecialTextTap: (dynamic parameter) {
                Clipboard.setData(ClipboardData(text: parameter));
                BotToast.showText(text: '已复制代码到剪切板');
              },
              specialTextSpanBuilder: MySpecialTextSpanBuilder(
                MediaQuery.of(context).size.width - 45,
              ),
            ));
  }
}
