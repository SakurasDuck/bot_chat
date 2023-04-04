import 'package:chat_ui/src/provider/chat_config.dart';
import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import '../../provider/chat_state.dart';
import 'chat_list.dart';
import 'drawer_menu.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SliderDrawer(
          appBar: null,
          slider: const MyDrawer(),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xffe5ddd5),
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
                title: Consumer(
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
                          style: const TextStyle(
                              fontSize: 14, color: Colors.grey)));
                    }

                    return Text.rich(TextSpan(children: text));
                  },
                ),
                centerTitle: false,
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
                        final controller =
                            ref.watch(getTextEditControllerProvider);
                        return ExtendedTextField(
                          focusNode: ref.watch(getFocusNodeProvider),
                          expands: false,
                          maxLines: 4,
                          minLines: 1,
                          controller: controller,
                          onSubmitted: (text) {
                            final chatStore =
                                ref.read(chatStoreProvider.notifier);
                            chatStore.sendMessage(text);
                            controller.text = '';
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: GestureDetector(
                                    onTap: () {
                                      final chatStore =
                                          ref.read(chatStoreProvider.notifier);
                                      chatStore.sendMessage(controller.text);
                                      controller.text = '';
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
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
