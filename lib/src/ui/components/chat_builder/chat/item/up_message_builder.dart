import 'package:flutter/material.dart';

import '../../../../../models/chat_msg/chat_up_message.dart';

class ChatUpMessageContent extends StatelessWidget {
  const ChatUpMessageContent({required this.upMsg, super.key});

  final ChatUpMessage upMsg;

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
