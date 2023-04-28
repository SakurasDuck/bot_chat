import 'package:chat_ui/src/provider/splash_load.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../routes/pages.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfffcfbf6),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
              width: MediaQuery.of(context).size.width * 0.1,
              child: Consumer(builder: (builder, ref, child) {
                final future = ref.watch(onLoadProvider);
                return future.when(
                  loading: () => const CircularProgressIndicator(),
                  error: (err, stack) {
                    debugPrint(err.toString());
                    return Text('load: $err');
                  },
                  data: (_) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      context.go(Routes.CHAT);
                    });
                    return const CircularProgressIndicator();
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
