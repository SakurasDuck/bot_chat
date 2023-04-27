import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../provider/chat/chat/chat_config.dart';
import '../../../../../provider/chat/common/chat_state.dart';

class PortraitMenu extends StatelessWidget {
  const PortraitMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final portrait = ref.watch(botPortraitProvider);
      final msgIsNotEmpty = ref.watch(messageStoreProvider).isNotEmpty;
      return Tooltip(
        message: '聊天画像',
        child: Builder(
          builder: (context) => ListTile(
              onTap: () {
                if (msgIsNotEmpty) {
                  BotToast.showEnhancedWidget(
                    clickClose: true,
                    toastBuilder: (cancel) => AlertDialog(
                      content: const Text('切换画像会清空当前聊天记录'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              cancel();
                              context.pushNamed('portraits');
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(4)),
                              child: const Text(
                                '我知道了',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  );
                } else {
                  context.pushNamed('portraits');
                }
              },
              leading: const Icon(
                Icons.face,
                size: 26,
              ),
              title: Text(
                portrait?.name ?? '用户画像-未选择',
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              )),
        ),
      );
    });
  }
}
