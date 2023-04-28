import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../provider/splash_load.dart';
import '../ui/components/add_portraits.dart';
import '../ui/components/chat_page.dart';
import '../ui/components/chat_portraits.dart';
import '../ui/components/models_list.dart';
import '../ui/components/splash.dart';

part 'routes.dart';

final router = GoRouter(
    routes: [
      GoRoute(
        path: _Path.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
          path: _Path.chat,
          builder: (context, state) => const ChatView(),
          routes: [
            GoRoute(
              path: _Path.models,
              builder: (context, state) => const ModelsList(),
            ),
            GoRoute(
                path: _Path.portraits,
                builder: (context, state) => const ChatPortraits(),
                routes: [
                  GoRoute(
                    path: _Path.addPortrait,
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
