import 'package:chat_ui/src/provider/chat.dart';
import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'chat_list.dart';

class ChatView extends StatelessWidget {
  const ChatView({required this.modelName, super.key});

  final String modelName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color(0xFF075E54),
          elevation: 0,
          title: Text(
            modelName,
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.video_call),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Column(
          children: [
            const Expanded(
              child: ChatList(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10, top: 10, bottom: 5),
              child: Consumer(
                builder: (context, ref, child) {
                  final controller = ref.read(getControllerProvider);
                  return ExtendedTextField(
                    expands: false,
                    maxLines: 4,
                    minLines: 1,
                    controller: controller,
                    onSubmitted: (text) {
                      final chatStore = ref.read(chatStoreProvider.notifier);
                      chatStore.sendMessage(text);
                      controller.text = '';
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      // prefixIcon: const Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 20.0),
                      //   child: Icon(
                      //     Icons.emoji_emotions_outlined,
                      //     color: Colors.grey,
                      //   ),
                      // ),
                      // suffixIcon: Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     children: const [
                      //       Icon(
                      //         Icons.attach_file_sharp,
                      //         color: Colors.grey,
                      //       ),
                      //       SizedBox(
                      //         width: 10,
                      //       ),
                      //       Icon(
                      //         Icons.currency_rupee_rounded,
                      //         color: Colors.grey,
                      //       ),
                      //       SizedBox(
                      //         width: 10,
                      //       ),
                      //       Icon(
                      //         Icons.camera_alt,
                      //         color: Colors.grey,
                      //       )
                      //     ],
                      //   ),
                      // ),
                      hintText: '输入消息!',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      // contentPadding: const EdgeInsets.all(10),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
