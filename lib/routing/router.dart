import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/domain/models/todo/todo.dart';
import 'package:flutter_todo/routing/routes.dart';
import 'package:flutter_todo/ui/main/widgets/main_page.dart';
import 'package:flutter_todo/ui/todo_edit/widgets/todo_edit_page.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.main,
    routes: [
      GoRoute(
        path: Routes.main,
        builder: (context, state) => MainPage(),
      ),
      GoRoute(
        path: Routes.todoAdd,
        pageBuilder: (context, state) => MaterialPage(
          child: TodoEditPage(),
          fullscreenDialog: true,
        ),
      ),
      GoRoute(
        path: Routes.todoEdit,
        pageBuilder: (context, state) => MaterialPage(
          child: TodoEditPage(todo: state.extra as Todo),
          fullscreenDialog: true,
        ),
      ),
    ],
  );
});
