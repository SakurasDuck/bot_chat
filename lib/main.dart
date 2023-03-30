import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Chat Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      routerConfig: router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  context.goNamed('models');
                },
                child: const Text('models')),
            TextButton(
                onPressed: () {
                  context.goNamed('chat',
                      params: {'model_name': 'gpt-3.5-turbo'});
                },
                child: const Text('chat'))
          ],
        ),
      ),
    );
  }
}
