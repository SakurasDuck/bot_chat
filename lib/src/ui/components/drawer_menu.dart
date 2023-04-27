import 'package:chat_ui/src/provider/chat/common/chat_state.dart';
import 'package:chat_ui/src/ui/widgets/clear_current_msg.dart';
import 'package:chat_ui/src/ui/widgets/open_key_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/proxy_menu.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black87,
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Consumer(
            builder: (context, ref, child) {
              final msgIsNotEmpty = ref.watch(messageStoreProvider).isNotEmpty;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ...ref.read(messageStoreProvider.notifier).buildDrawerMenus(),
                  if (!kIsWeb) const ProxyMenu(),
                  const OPENAIKeyMenu(),
                  Expanded(child: Container()),
                  if (msgIsNotEmpty) const ClearCurrentMsgAction(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
