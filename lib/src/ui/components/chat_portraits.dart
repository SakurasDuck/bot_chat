import 'package:chat_ui/src/provider/chat/common/chat_state.dart';
import 'package:chat_ui/src/ui/widgets/refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../provider/chat/chat/chat_config.dart';
import '../../provider/chat/chat/chat_state.dart';
import '../../provider/portrait/portrait_list.dart';
import '../../routes/pages.dart';
import '../widgets/portrait_msgs.dart';

class ChatPortraits extends StatelessWidget {
  const ChatPortraits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        elevation: 0,
        title: const Text(
          '选择系统画像',
        ),
        centerTitle: false,
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final portraitMsgs = ref.watch(chatPortraitProvider);

          return Refresh(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final portrait = portraitMsgs[index];

                  if (portrait == null) {
                    return Consumer(
                        builder: (context, ref, child) => GestureDetector(
                              onTap: () {
                                ref.read(botPortraitProvider.notifier)
                                  ..reset()
                                  ..toCache();
                                //清空当前聊天记录
                                ref
                                    .read(messageStoreProvider.notifier)
                                    .resetChat();
                                context.pop();
                              },
                              child: Card(
                                elevation: 8,
                                shadowColor: const Color(0xff2da9ef),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: const Center(
                                  child: Text('无',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ));
                  } else {
                    return Consumer(
                        builder: (context, ref, child) => GestureDetector(
                              onTap: () {
                                final riverpod =
                                    ref.read(botPortraitProvider.notifier);
                                final result = riverpod.onChange(portrait);
                                riverpod.toCache();
                                if (result) {
                                  //清空当前聊天记录
                                  ref
                                      .read(messageStoreProvider.notifier)
                                      .resetChat();
                                  context.pop();
                                }
                              },
                              child: PortraitItem(
                                index: index,
                                msg: portrait,
                              ),
                            ));
                  }
                },
                itemCount: portraitMsgs.length,
              ),
              refreshFunc: () =>
                  ref.read(chatPortraitProvider.notifier).onRefresh());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(Routes.ADD_PORTRAIT);
        },
        tooltip: '添加画像',
        backgroundColor: const Color(0xFF075E54),
        child: const Icon(
          Icons.add,
          size: 26,
          color: Colors.white,
        ),
      ),
    );
  }
}
