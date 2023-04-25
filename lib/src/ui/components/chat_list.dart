import 'package:chat_ui/src/models/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../provider/chat/chat/chat_state.dart';
import '../../provider/chat/common/chat_state.dart';
import '../widgets/bot_message_card.dart';
import '../widgets/send_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey centerKey = GlobalKey();
    return Consumer(
        builder: (context, ref, child) => FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Consumer(
                    builder: (context, ref, child) {
                      final chatStore = ref.watch(messageStoreProvider);
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
                              controller:
                                  ref.watch(getScrollerControllerProvider),
                              center: centerKey,
                              slivers: [
                                SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                        (context, index) {
                                  final msg = chatStore[index];
                                  if (msg.isUpMessage) {
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
                                    ref
                                        .read(getShowMoreBtnProvider.notifier)
                                        .hide();
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
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: const Text(
                                            '有新回复',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
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
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
              future: ref.read(chatStoreProvider.notifier).loadHistoryMessage(),
            ));
  }

  Widget renderRightItem(Message data) {
    return Consumer(
        builder: (context, ref, child) => SendMessageCard(
              resendMessageFunc: () {
                ref.read(chatStoreProvider.notifier).resendMessage(data.msgId);
              },
              sendStatus: data.upMessage!.status,
              message: 'data.fromMe!.message.content',
              date: DateFormat('HH:mm')
                  .format(DateTime.fromMillisecondsSinceEpoch(data.createTime)),
            ));
  }

  Widget renderLeftItem(Message data) {
    return BotMessageCard(
      message: data.downMessage!.choices.first.message.content,
      date: DateFormat('HH:mm')
          .format(DateTime.fromMillisecondsSinceEpoch(data.createTime)),
    );
  }
}
