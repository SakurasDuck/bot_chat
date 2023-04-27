

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/chat/common/drawer_ctrl.dart';

class CommonDrawerInput extends StatelessWidget {
  const CommonDrawerInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, ref, child) => IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            ref.read(drawerCtrlKeyProvider.notifier).toggle();
          },
        ),
      );
  }
}