import 'package:flutter/material.dart';

class CommonChatViewBuilder extends StatelessWidget {
  const CommonChatViewBuilder(
      {required this.title,
      required this.drawerMenu,
      required this.chatView,
      required this.chatInputView,
      super.key});

  final Widget title;

  final Widget chatView;

  final Widget chatInputView;

  final Widget drawerMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffe5ddd5),
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color(0xFF075E54),
          elevation: 0,
          leading: drawerMenu,
          title: title,
          centerTitle: false,
        ),
        body: Column(
          children: [
            Expanded(
              child: chatView,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10, top: 10, bottom: 5),
              child: chatInputView,
            ),
          ],
        ),
      ),
    );
  }
}
