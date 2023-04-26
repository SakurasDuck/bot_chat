import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../provider/chat/chat/chat_state.dart';

class TextMessageInput extends StatelessWidget {
  const TextMessageInput({required this.sendMessage, super.key});

  final void Function(String text) sendMessage;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final controller = ref.watch(getTextEditControllerProvider);
        return ExtendedTextField(
          focusNode: ref.watch(getFocusNodeProvider),
          expands: false,
          maxLines: 4,
          minLines: 1,
          controller: controller,
          onSubmitted: (text) {
            _sendMessage(text, ref, controller);
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GestureDetector(
                    onTap: () {
                      _sendMessage(ref.read(getTextEditControllerProvider).text,
                          ref, controller);
                    },
                    child: ValueListenableBuilder(
                        valueListenable: controller,
                        builder: (context, value, child) {
                          return Icon(
                            Icons.send,
                            color: value.text.isNotEmpty == true
                                ? Colors.blue
                                : Colors.grey,
                          );
                        }))),
            hintText: '输入消息!',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        );
      },
    );
  }

  void _sendMessage(
      String content, WidgetRef ref, TextEditingController controller) {
    //处理消息文本,去除前后空格,换行符
    content = content.trim().replaceAll(RegExp(r'\n+$'), '');
    if (content.isEmpty) {
      return;
    }
    sendMessage(content);
    controller.text = '';
  }
}
