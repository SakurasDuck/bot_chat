import 'package:chat_ui/src/provider/chat/common/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../provider/chat/chat/chat_config.dart';
import '../../provider/chat/common/drawer_ctrl.dart';
import '../widgets/comon_drawer_inpput.dart';
import 'chat_list.dart';
import 'drawer_menu.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ShowCaseWidget(
        disableMovingAnimation: true,
        builder: Builder(
            builder: (context) => Consumer(
                  builder: (context, ref, child) {
                    return SliderDrawer(
                        key: ref.watch(drawerCtrlKeyProvider),
                        appBar: null,
                        slider: const MyDrawer(),
                        child: ref
                            .read(messageStoreProvider.notifier)
                            .buildChatView(
                              const CommonDrawerInput(),
                              const ChatList(),
                              ref
                                  .read(messageStoreProvider.notifier)
                                  .buildMsgInput(),
                            ));
                  },
                )),
      ),
    );
  }
}
