import 'package:flutter_todo/util/enum.dart';
import 'package:json_annotation/json_annotation.dart';

class TodoStatusConverter implements JsonConverter<TodoStatus, int> {
  const TodoStatusConverter();

  @override
  TodoStatus fromJson(int json) {
    return switch (json) {
      1 => TodoStatus.untouched,
      2 => TodoStatus.working,
      3 => TodoStatus.done,
      _ => TodoStatus.untouched,
    };
  }

  @override
  int toJson(TodoStatus object) {
    return object.index + 1;
  }
}
