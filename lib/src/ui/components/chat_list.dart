import 'package:chat_ui/src/provider/chat.dart';
import 'package:chat_ui/src/provider/scroll_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

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
        return CustomScrollView(
          reverse: true,
          controller: ref.read(getScrollControllerProvider),
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
        );
      },
    );
  }

  Widget renderRightItem(ChatState data) {
    return Consumer(
        builder: (context, ref, child) => SendMessageCard(
              resendMessageFunc: () {
                ref
                    .read(chatStoreProvider.notifier)
                    .resendMEssage(data.fromMe!.id);
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
