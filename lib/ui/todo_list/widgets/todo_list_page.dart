import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/routing/routes.dart';
import 'package:flutter_todo/ui/todo_list/view_models/todo_list_view_model.dart';
import 'package:flutter_todo/util/enum.dart';
import 'package:go_router/go_router.dart';

class TodoListPage extends ConsumerStatefulWidget {
  const TodoListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoListPageState();
}

class _TodoListPageState extends ConsumerState<TodoListPage> with TickerProviderStateMixin {
  late final _tabController = TabController(length: TodoStatus.values.length, vsync: this);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODOリスト'),
        bottom: TabBar(
          tabs: TodoStatus.values.map((status) => Tab(text: status.label)).toList(),
          controller: _tabController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Routes.todoAdd),
        child: Icon(Icons.add_rounded),
      ),
      body: ref.watch(todoListViewModelProvider).when(
            data: (state) {
              return TabBarView(
                controller: _tabController,
                children: TodoStatus.values.map(
                  (status) {
                    final todos = state.todoItems[status] ?? [];
                    final Widget listView;
                    if (todos.isEmpty) {
                      listView = ListView(
                        padding: EdgeInsets.all(32),
                        children: [
                          Center(
                            child: Text('${status.label}のタスクはありません'),
                          )
                        ],
                      );
                    } else {
                      listView = ListView.separated(
                        itemBuilder: (context, index) {
                          final todo = todos[index];
                          return ListTile(
                            onTap: () => context.push(Routes.todoEdit, extra: todo),
                            title: Row(
                              children: [
                                Expanded(child: Text(todo.title)),
                              ],
                            ),
                            subtitle: todo.detail.isEmpty ? null : Text(todo.detail),
                          );
                        },
                        separatorBuilder: (_, __) => Divider(height: 0),
                        itemCount: todos.length,
                      );
                    }
                    return RefreshIndicator.adaptive(
                      onRefresh: () async => ref.invalidate(todoListViewModelProvider),
                      child: listView,
                    );
                  },
                ).toList(),
              );
            },
            error: (error, stackTrace) => Center(
              child: Text(error.toString()),
            ),
            loading: () => Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
    );
  }
}
