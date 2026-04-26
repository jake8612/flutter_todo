import 'package:flutter_todo/domain/models/todo/todo.dart';
import 'package:flutter_todo/util/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list_state.freezed.dart';
part 'todo_list_state.g.dart';

@freezed
abstract class TodoListState with _$TodoListState {
  const factory TodoListState({
    @Default(<TodoStatus, List<Todo>>{}) Map<TodoStatus, List<Todo>> todoItems,
  }) = _TodoListState;

  factory TodoListState.fromJson(Map<String, dynamic> json) => _$TodoListStateFromJson(json);
}
