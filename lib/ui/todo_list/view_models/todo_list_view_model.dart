import 'package:flutter_todo/data/repositories/todo/todo_repository.dart';
import 'package:flutter_todo/domain/models/todo/todo.dart';
import 'package:flutter_todo/ui/todo_list/view_models/todo_list_state.dart';
import 'package:flutter_todo/util/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_list_view_model.g.dart';

@riverpod
class TodoListViewModel extends _$TodoListViewModel {
  @override
  Future<TodoListState> build() async {
    final todos = await ref.read(todoRepositoryProvider).fetch();
    final todoItems = Map.fromEntries(TodoStatus.values.map((status) => MapEntry(status, <Todo>[])));
    for (final todo in todos) {
      todoItems[todo.status]?.add(todo);
    }
    return TodoListState(todoItems: todoItems);
  }
}
