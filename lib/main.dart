import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'src/config/open_api_key/get_api_key.dart';
import 'src/http_clinet/clinet.dart';
import 'src/routes/route.dart';
import 'src/services/apis.dart';
import 'src/ui/theme.dart';

void main() {
  HttpEnhancedClient.instance([
    timeoutProxyProgram,
    checkStatusCodeProgram,
  ]);
  apisInstance();
  initKey();
  runApp(const ProviderScope(child: MyApp()));
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
