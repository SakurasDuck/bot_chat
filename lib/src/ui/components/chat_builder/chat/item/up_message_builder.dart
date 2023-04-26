import 'package:flutter/material.dart';

import '../../../../../models/chat_msg/up_message.dart';

class UpMessageContent extends StatelessWidget {
  const UpMessageContent({required this.upMsg, super.key});

  final UpMessage upMsg;

  @override
  Widget build(BuildContext context) {
    return Text(
      upMsg.content,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
