import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../provider/chat/chat/chat_config.dart';

class ChatTitle extends StatelessWidget {
  const ChatTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final portrait = ref.watch(botPortraitProvider);
        final chatModel = ref.watch(chatModelProvider);
        final text = <TextSpan>[];
        if (portrait == null) {
          text.add(TextSpan(text: chatModel));
        } else {
          text.add(TextSpan(text: portrait.name));
          text.add(TextSpan(
              text: '  $chatModel',
              style: const TextStyle(fontSize: 14, color: Colors.grey)));
        }

        return Text.rich(TextSpan(children: text));
      },
    );
  }
}
