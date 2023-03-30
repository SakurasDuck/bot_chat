import 'package:go_router/go_router.dart';

import '../../main.dart';
import '../ui/components/chat_page.dart';
import '../ui/components/models_list.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const MyHomePage(
        title: 'home',
      ),
    ),
    GoRoute(
      name: 'models',
      path: '/models',
      builder: (context, state) => const ModelsList(),
    ),
    GoRoute(
      name: 'chat',
      path: '/chat/:model_name',
      builder: (context, state) =>
          ChatView(modelName: state.params['model_name']!),
    )
  ],
);


