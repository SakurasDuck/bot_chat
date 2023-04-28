import 'dart:convert';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../models/image_gen/image_gen_down_message.dart';

class ImageGenDownMessageContent extends StatelessWidget {
  const ImageGenDownMessageContent({required this.downMsg, super.key});

  final ImageGenDownMessage downMsg;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      ImageProvider? image;
      if (downMsg.url?.isNotEmpty == true) {
        image = ExtendedNetworkImageProvider(downMsg.url!, cache: true);
      }
      if (downMsg.base64?.isNotEmpty == true) {
        image = MemoryImage(base64Decode(downMsg.base64!));
      }
      if (image == null) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.image,
                size: 50,
                color: Colors.grey,
              ),
              Text(
                'No image available',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        );
      } else {
        return ExtendedImage(
          image: image,
          fit: BoxFit.fitWidth,
          enableLoadState: true,
          mode: ExtendedImageMode.gesture,
          initGestureConfigHandler: (state) =>
              GestureConfig(inPageView: true, cacheGesture: false),
        );
      }
    });
  }
}
