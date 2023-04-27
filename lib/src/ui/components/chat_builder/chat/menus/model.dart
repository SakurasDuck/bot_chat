

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../provider/chat/chat/chat_config.dart';
import '../../../../../provider/chat/common/chat_state.dart';
import '../../../../../provider/chat/common/drawer_ctrl.dart';

class ModelMenu extends StatelessWidget {
  const ModelMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
                    final model = ref.watch(chatModelProvider);
                    final msgIsNotEmpty=ref.read(messageStoreProvider).isNotEmpty;
                    return Tooltip(
                      message: '语言模型',
                      child: ListTile(
                          leading: const Icon(
                            Icons.view_in_ar,
                            size: 26,
                          ),
                          onTap: () {
                            //如果没有设置OPENAI API key,弹出高亮
                            if (ref.read(needShowHighLightProvider)) {
                              ref.read(toShowHighLightProvider);
                              return;
                            }

                            if (msgIsNotEmpty) {
                              BotToast.showEnhancedWidget(
                                clickClose: true,
                                toastBuilder: (cancel) => AlertDialog(
                                  content: const Text('切换语言模型会清空当前聊天记录'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          cancel();
                                          context.pushNamed('models');
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 4),
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: const Text(
                                            '我知道了',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )),
                                  ],
                                ),
                              );
                            } else {
                              context.pushNamed('models');
                            }
                          },
                          title: Text(
                            model,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          )),
                    );
                  });
  }
}