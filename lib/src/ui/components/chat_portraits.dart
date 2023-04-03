import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/portrait_list.dart';
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
          '系统画像',
        ),
        centerTitle: false,
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final portraitMsgs = ref.watch(chatPortraitProvider);
          return ListView.builder(
            itemBuilder: (context, index) => PortraitItem(
              index: index,
              msg: portraitMsgs[index],
            ),
            itemCount: portraitMsgs.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
