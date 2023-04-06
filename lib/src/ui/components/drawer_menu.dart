import 'package:bot_toast/bot_toast.dart';
import 'package:chat_ui/src/provider/chat_config.dart';
import 'package:chat_ui/src/provider/chat_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../http_clinet/clinet.dart';
import '../widgets/text_edit.dart';

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
              final show = ref.watch(chatStoreProvider).isNotEmpty;
              return Column(
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
                            if (show) {
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
                              context.goNamed('models');
                            }
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
                            if (show) {
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
                              context.goNamed('portraits');
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
                    );
                  }),
                  if (!kIsWeb)
                    Consumer(builder: (context, ref, child) {
                      final proxy = ref.watch(proxyConfigProvider);
                      return Tooltip(
                        message: '设置代理',
                        child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  reverseTransitionDuration:
                                      const Duration(milliseconds: 0),
                                  pageBuilder: (context, _, __) => TextEdit(
                                        hintText: '请输入代理地址-格式: host:port',
                                        onSubmitted: (text) {
                                          //地址校验
                                          //设置代理
                                          if (text.isNotEmpty) {
                                            HttpEnhancedClient.resetProxy(text);
                                            ref
                                                .read(proxyConfigProvider
                                                    .notifier)
                                                .onChange(text);
                                            Navigator.of(context).pop();
                                          }
                                        },
                                        onBack: (context) {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                  opaque: false));
                                  
                            },
                            leading: const Icon(
                              Icons.vpn_lock,
                              size: 26,
                            ),
                            title: Text(
                              proxy ?? '代理-未设置',
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            )),
                      );
                    }),
                  Consumer(builder: (context, ref, child) {
                    final key = ref.watch(getOpenAPIKeyProvider);
                    return Tooltip(
                      message: 'API Key',
                      child: ListTile(
                          onTap: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                reverseTransitionDuration:
                                    const Duration(milliseconds: 0),
                                pageBuilder: (context, _, __) => TextEdit(
                                    hintText: '请输入Open API Key',
                                    onSubmitted: (text) {
                                      if (text.isNotEmpty) {
                                        ref
                                            .read(getOpenAPIKeyProvider.notifier)
                                            .onChange(text);
                                        Navigator.of(context).pop();
                                      }
                                    },
                                    onBack: (context) {
                                      Navigator.of(context).pop();
                                    }),
                                opaque: false));
                          },
                          leading: const Icon(
                            Icons.key,
                            size: 26,
                          ),
                          title: Text(
                            key.isNotEmpty ? '******' : 'Key-未设置',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          )),
                    );
                  }),
                  Expanded(child: Container()),
                  if (show)
                    Container(
                      alignment: Alignment.center,
                      child: Tooltip(
                        message: '清空聊天记录',
                        child: GestureDetector(
                          onTap: () {
                            BotToast.showEnhancedWidget(
                              clickClose: true,
                              toastBuilder: (cancel) => AlertDialog(
                                content: const Text('你确认清空当前聊天记录'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        cancel();
                                        ref
                                            .read(chatStoreProvider.notifier)
                                            .resetContent();
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: const Text(
                                          '确认',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                ],
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Icon(
                              Icons.clear,
                              size: 26,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}