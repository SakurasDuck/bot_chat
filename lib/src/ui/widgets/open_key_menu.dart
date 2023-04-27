import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../provider/chat/common/chat_config.dart';
import '../../provider/chat/common/drawer_ctrl.dart';
import 'text_edit.dart';

class OPENAIKeyMenu extends StatelessWidget {
  const OPENAIKeyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, ref, child) => Showcase(
            key: ref.watch(highLightKeyProvider),
            description: '请输入你的OPENAI API Key',
            child: Consumer(
              builder: (context, ref, child) => Tooltip(
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
                                  ref.read(getOpenAPIKeyProvider.notifier)
                                    ..onChange(text)
                                    ..toCache();
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
                      ref.watch(getOpenAPIKeyProvider).isNotEmpty
                          ? '******'
                          : 'Key-未设置',
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                    )),
              ),
            )));
  }
}
