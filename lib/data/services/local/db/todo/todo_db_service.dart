import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/data/services/local/db/db_service.dart';
import 'package:flutter_todo/domain/models/todo/todo.dart';
import 'package:flutter_todo/domain/models/todo_insert/todo_insert.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final todoDbServiceProvider = Provider<TodoDbService>((ref) {
  return TodoDbService();
});

class TodoDbService implements DbService {
  @override
  Future<void> onCreate(Database db, int? version) async {
    return await db.execute('''
CREATE TABLE IF NOT EXISTS Todo (
id INTEGER PRIMARY KEY,
title TEXT NOT NULL,
detail TEXT NOT NULL DEFAULT '',
status INTEGER NOT NULL DEFAULT 1,
createdAt TEXT NOT NULL,
updatedAt TEXT NOT NULL,
deletedAt TEXT
)
''');
  }

  @override
  int get version => 1;

  @override
  Future<Database> open() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'Todo.db'),
      onCreate: onCreate,
      version: version,
    );
  }

  Future<List<Todo>> getAll() async {
    final db = await open();
    final rows = await db.rawQuery('SELECT * FROM Todo WHERE deletedAt IS NULL ORDER BY updatedAt DESC');
    final results = rows.map(Todo.fromJson).toList();
    await db.close();
    return results;
  }

  Future<bool> insert(TodoInsert item) async {
    final db = await open();
    final result = await db.insert('Todo', item.toJson());
    await db.close();
    return result > 0;
  }

  Future<bool> update(Todo todo) async {
    final db = await open();
    final result = await db.update(
      'Todo',
      todo.toJson(),
      where: 'id = ?',
      whereArgs: [todo.id],
    );
    await db.close();
    return result > 0;
  }
}
