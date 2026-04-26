import 'package:flutter_todo/util/converters/todo_status_converter.dart';
import 'package:flutter_todo/util/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
abstract class Todo with _$Todo {
  const Todo._();
  const factory Todo({
    required int id,
    required String title,
    @Default('') String detail,
    @TodoStatusConverter() @Default(TodoStatus.untouched) TodoStatus status,
    required String createdAt,
    required String updatedAt,
    required String? deletedAt,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
