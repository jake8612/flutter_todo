import 'package:flutter_todo/util/enum.dart';

class TodoInsert {
  final String title;
  final String detail;
  final TodoStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;

  const TodoInsert({
    required this.title,
    this.detail = '',
    this.status = TodoStatus.untouched,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TodoInsert.create({
    required String title,
    String detail = '',
    TodoStatus status = TodoStatus.untouched,
  }) {
    final now = DateTime.now();
    return TodoInsert(
      title: title,
      detail: detail,
      status: status,
      createdAt: now,
      updatedAt: now,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'detail': detail,
      'status': status.index + 1,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
