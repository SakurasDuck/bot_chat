import 'package:flutter/material.dart';

import '../../../../../models/image_gen/image_gen_up_message.dart';

class ImageGenUpMessageContent extends StatelessWidget {
  const ImageGenUpMessageContent({required this.upMsg, super.key});

  final ImageGenUpMessage upMsg;

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
