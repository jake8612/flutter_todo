import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/routing/routes.dart';
import 'package:flutter_todo/ui/main/widgets/main_page.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.main,
    routes: [
      GoRoute(
        path: Routes.main,
        builder: (context, state) => MainPage(),
      ),
    ],
  );
});
