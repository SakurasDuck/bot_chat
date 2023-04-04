import 'package:chat_ui/src/provider/chat_config.dart';
import 'package:chat_ui/src/ui/widgets/refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../provider/portrait_list.dart';
import '../widgets/portrait_msgs.dart';

class ChatPortraits extends StatelessWidget {
  const ChatPortraits({this.toChoose = false, super.key});

  //是否可以点击选择
  final bool toChoose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        elevation: 0,
        title: Text(
          '${toChoose ? '选择' : ''}系统画像',
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
                  final child = PortraitItem(
                    index: index,
                    msg: portrait,
                  );
                  if (toChoose) {
                    return Consumer(
                        builder: (context, ref, child) => GestureDetector(
                              onTap: () {
                                ref
                                    .read(botPortraitProvider.notifier)
                                    .onChange(portrait);
                                context.pop();
                              },
                              child: child,
                            ));
                  } else {
                    return child;
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
          context.goNamed('add_portrait');
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
