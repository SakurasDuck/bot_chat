import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../provider/splash_load.dart';
import '../ui/components/add_portraits.dart';
import '../ui/components/chat_page.dart';
import '../ui/components/chat_portraits.dart';
import '../ui/components/models_list.dart';
import '../ui/components/splash.dart';

final router = GoRouter(
    routes: [
      GoRoute(
        name: 'splash',
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
          name: 'chat',
          path: '/chat',
          builder: (context, state) => const ChatView(),
          routes: [
            GoRoute(
              name: 'models',
              path: 'models',
              builder: (context, state) => const ModelsList(),
            ),
            GoRoute(
                name: 'portraits',
                path: 'portraits',
                builder: (context, state) => const ChatPortraits(),
                routes: [
                  GoRoute(
                    name: 'add_portrait',
                    path: 'add_portrait',
                    builder: (context, state) => const AddPortrait(),
                  ),
                ])
          ]),
    ],
    redirect: kIsWeb
        ? (context, routerState) async {
            final result = await isInited;
            if (!result) {
              return '/';
            }
            return null;
          }
        : null,

    //bot_toast config
    observers: [BotToastNavigatorObserver()]);
