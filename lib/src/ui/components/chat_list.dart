import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

import '../../provider/chat_state.dart';
import '../../services/chat_state.dart';
import '../widgets/bot_message_card.dart';
import '../widgets/send_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey centerKey = GlobalKey();
    return Consumer(
      builder: (context, ref, child) {
        //倒序
        final chatStore = ref.watch(chatStoreProvider);
        return GestureDetector(
          onTap: () {
            if (ref.read(getFocusNodeProvider).hasFocus) {
              FocusScope.of(context).unfocus();
            }
          },
          child: Stack(
            children: [
              CustomScrollView(
                reverse: true,
                physics: const BouncingScrollPhysics(),
                controller: ref.watch(getScrollerControllerProvider),
                center: centerKey,
                slivers: [
                  SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                    final msg = chatStore[index];
                    if (msg.fromMe != null) {
                      return renderRightItem(msg);
                    } else {
                      return renderLeftItem(msg);
                    }
                  }, childCount: chatStore.length)),
                  SliverPadding(
                    padding: EdgeInsets.zero,
                    key: centerKey,
                  ),
                ],
              ),
              if (ref.watch(getShowMoreBtnProvider).show)
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      ref.read(getShowMoreBtnProvider.notifier).hide();
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                        color: Colors.blue,
                      ),
                      height: 35,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: const Text(
                              '有新回复',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          const Icon(
                            Icons.expand_more,
                            size: 16,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget renderRightItem(ChatState data) {
    return Consumer(
        builder: (context, ref, child) => SendMessageCard(
              resendMessageFunc: () {
                ref.read(chatStoreProvider.notifier).resendMEssage(data.msgId);
              },
              sendStatus: data.fromMe!.status,
              message: data.fromMe!.message.content,
              date: DateFormat('HH:mm').format(
                  DateTime.fromMillisecondsSinceEpoch(data.createTimeStamp)),
            ));
  }

  Widget renderLeftItem(ChatState data) {
    return BotMessageCard(
      message: data.fromBot!.choices.first.message.content,
      date: DateFormat('HH:mm')
          .format(DateTime.fromMillisecondsSinceEpoch(data.createTimeStamp)),
    );
  }
}
