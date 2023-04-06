import 'package:chat_ui/src/provider/text_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextEdit extends StatelessWidget {
  const TextEdit({
    required this.onSubmitted,
    required this.onBack,
    this.hintText,
    super.key,
  });

  final void Function(BuildContext context) onBack;
  final String? hintText;
  final void Function(String text) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0x00ffffff),
      body: GestureDetector(
        onTap: () {
          onBack.call(context);
        },
        child: Container(
          color: Colors.black.withOpacity(0.5),
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10, top: 10, bottom: 5),
            child: Consumer(
              builder: (context, ref, child) {
                final controller = ref.watch(getTextEditCtrlProvider);
                return TextField(
                  focusNode: FocusNode(),
                  maxLines: 1,
                  controller: controller,
                  onSubmitted: (text) {
                    final text = controller.text;
                    onSubmitted(text);
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: hintText,
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
            ),
          ),
        ),
      ),
    );
  }
}
