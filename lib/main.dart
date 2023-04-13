import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'src/config/api_execption.dart';
import 'src/config/global_ref.dart';
import 'src/config/open_api_key/get_api_key.dart';
import 'src/http_clinet/clinet.dart';
import 'src/routes/route.dart';
import 'src/services/apis.dart';
import 'src/ui/theme.dart';

void main() {
  runZonedGuarded(() {
    final porviderContainer = ProviderContainer();
    //同步错误
    FlutterError.onError = defaultError;
    HttpEnhancedClient.instance([
      timeoutProxyProgram,
      checkStatusCodeProgram,
    ]);
    apisInstance();
    initKey();
    setPathUrlStrategy();
    registerGLobalPC(porviderContainer);
    runApp(ProviderScope(
        child: UncontrolledProviderScope(
            container: porviderContainer, child: const MyApp())));
  }, (error, stack) {
    //异步错误
    defaultError(FlutterErrorDetails(exception: error, stack: stack));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    return MaterialApp.router(
      title: 'Bot Chat',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      routerConfig: router,
      builder: (context, child) {
        return botToastBuilder(context, child);
      },
    );
  }
}

void defaultError(FlutterErrorDetails details) {
  if (details.exception is ApiException) {
    final e = details.exception as ApiException;
    BotToast.showText(text: e.message);
  } else if (details.exception is TimeoutException) {
    BotToast.showText(text: '请求超时,请稍后再试');
  }
  debugPrint('defaultError执行:\n${details.exception}\n${details.stack}');
}
