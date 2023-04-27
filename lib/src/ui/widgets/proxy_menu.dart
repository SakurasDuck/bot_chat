
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/chat/common/chat_config.dart';
import 'text_edit.dart';

class ProxyMenu extends StatelessWidget {
  const ProxyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
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
                                          //todo 地址校验
                                          //设置代理
                                          ref.read(proxyConfigProvider.notifier)
                                            ..onChange(text)
                                            ..toCache();
                                          Navigator.of(context).pop();
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
                              proxy.isNotEmpty ? proxy : '代理-未设置',
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            )),
                      );
                    });
  }
}