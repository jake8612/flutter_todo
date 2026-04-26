import 'package:flutter_todo/data/services/local/db/todo/todo_db_service.dart';
import 'package:flutter_todo/domain/models/todo/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_repository.g.dart';

@riverpod
TodoRepository todoRepository(Ref ref) {
  return TodoRepository(ref.read(todoDbServiceProvider));
}

class TodoRepository {
  final TodoDbService todoDbService;
  const TodoRepository(this.todoDbService);

  Future<List<Todo>> fetch() async {
    return await todoDbService.getAll();
  }
}
