import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/chat/common/chat_state.dart';

class ClearCurrentMsgAction extends StatelessWidget {
  const ClearCurrentMsgAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => Container(
        alignment: Alignment.center,
        child: Tooltip(
          message: '清空聊天记录',
          child: GestureDetector(
            onTap: () {
              BotToast.showEnhancedWidget(
                clickClose: true,
                toastBuilder: (cancel) => AlertDialog(
                  content: const Text('你确认清空当前聊天记录'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          cancel();
                          ref.read(messageStoreProvider.notifier).resetChat();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(4)),
                          child: const Text(
                            '确认',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ],
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.clear,
                size: 26,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
