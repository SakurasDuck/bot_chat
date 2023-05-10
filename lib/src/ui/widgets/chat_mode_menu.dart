import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/enums.dart';
import '../../provider/chat/common/chat_config.dart';

class ChatModeMenu extends StatelessWidget {
  const ChatModeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final mode = ref.watch(modeConfigProvider);
        return Tooltip(
          message: 'Chat Mode',
          child: ListTile(
              leading: const Icon(
                Icons.key,
                size: 26,
              ),
              title: PopupMenuButton<ChatMode>(
                itemBuilder: (BuildContext context) => ChatMode.values
                    .where((e) =>
                        e == ChatMode.ASR &&
                        !kIsWeb) //web does not support ASR(record  not supported well by web )
                    .map((e) => PopupMenuItem(
                          value: e,
                          child: Text(e.value),
                        ))
                    .toList(),
                onSelected: (ChatMode value) {
                  ref
                      .read(modeConfigProvider.notifier)
                      .onChange(context, value);
                },
                child: ListTile(
                  title: Text(mode.value),
                  trailing: const Icon(Icons.arrow_drop_down),
                ),
              )),
        );
      },
    );
  }
}
