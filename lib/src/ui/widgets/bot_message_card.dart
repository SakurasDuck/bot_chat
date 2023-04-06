import 'package:bot_toast/bot_toast.dart';
import 'package:extended_text/extended_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'markdow_code_builder.dart';

class BotMessageCard extends StatelessWidget {
  const BotMessageCard({
    Key? key,
    required this.message,
    required this.date,
  }) : super(key: key);

  final String message;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 5,
                    bottom: 20,
                  ),
                  child: Builder(
                      builder: (context) => ExtendedText(
                            message,
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
                          ))),
              Positioned(
                bottom: 2,
                right: 10,
                child: Text(
                  date,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
