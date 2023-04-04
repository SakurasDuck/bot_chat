import 'package:bot_toast/bot_toast.dart';
import 'package:chat_ui/src/provider/chat_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black87,
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Consumer(builder: (context, ref, child) {
                final model = ref.watch(chatModelProvider);
                return Tooltip(
                  message: '语言模型',
                  child: ListTile(
                      leading: const Icon(
                        Icons.view_in_ar,
                        size: 26,
                      ),
                      onTap: () {
                        BotToast.showEnhancedWidget(
                          clickClose: true,
                          toastBuilder: (cancel) => AlertDialog(
                            content: const Text('切换语言模型会清空当前聊天记录'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    cancel();
                                    context.goNamed('models');
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
                      },
                      title: Text(
                        model,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      )),
                );
              }),
              Consumer(builder: (context, ref, child) {
                final portrait = ref.watch(botPortraitProvider);
                return Tooltip(
                  message: '聊天画像',
                  child: ListTile(
                      onTap: () {
                        BotToast.showEnhancedWidget(
                          clickClose: true,
                          toastBuilder: (cancel) => AlertDialog(
                            content: const Text('切换画像会清空当前聊天记录'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    cancel();
                                    context.goNamed('portraits');
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
                );
              }),
              const ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
