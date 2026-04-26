import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/data/services/local/db/todo/todo_db_service.dart';
import 'package:flutter_todo/domain/models/todo/todo.dart';
import 'package:flutter_todo/domain/models/todo_insert/todo_insert.dart';
import 'package:flutter_todo/ui/todo_list/view_models/todo_list_view_model.dart';
import 'package:flutter_todo/util/enum.dart';
import 'package:go_router/go_router.dart';

class TodoEditPage extends ConsumerStatefulWidget {
  const TodoEditPage({super.key, this.todo});
  final Todo? todo;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoEditPageState();
}

class _TodoEditPageState extends ConsumerState<TodoEditPage> {
  final _titleController = TextEditingController();
  final _detailController = TextEditingController();
  var _status = TodoStatus.untouched;
  var _isAdding = false;

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.todo?.title ?? '';
    _detailController.text = widget.todo?.detail ?? '';
    _status = widget.todo?.status ?? TodoStatus.untouched;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _detailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo == null ? 'TODO 追加' : 'TODO 編集'),
        leading: IconButton(
          onPressed: _isAdding ? null : context.pop,
          icon: Icon(Icons.close_rounded),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: TextFormField(
                controller: _titleController,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: 'タイトル',
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surfaceContainer,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: TextFormField(
                controller: _detailController,
                maxLines: 3,
                minLines: 1,
                decoration: InputDecoration(
                  labelText: '詳細',
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surfaceContainer,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: DropdownButtonFormField(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.keyboard_arrow_down_rounded),
                decoration: InputDecoration(
                  labelText: 'ステータス',
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surfaceContainer,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                initialValue: _status,
                items: TodoStatus.values
                    .map((status) => DropdownMenuItem(
                          value: status,
                          child: Text(status.label),
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value == null) return;
                  setState(() {
                    _status = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.all(16),
        child: FilledButton(
          onPressed: _isAdding ? null : _onDone,
          child: _isAdding
              ? Center(
                  child: SizedBox.square(
                    dimension: 16,
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      strokeWidth: 2,
                    ),
                  ),
                )
              : Text('完了'),
        ),
      ),
    );
  }

  Future<void> _onDone() async {
    if (widget.todo == null) {
      await _insert();
    } else {
      await _update();
    }
  }

  Future<void> _insert() async {
    setState(() {
      _isAdding = true;
    });
    await Future.delayed(Duration(seconds: 1));
    final title = _titleController.text;
    final detail = _detailController.text;
    final status = _status;
    final todoData = TodoInsert.create(
      title: title,
      detail: detail,
      status: status,
    );
    await ref.read(todoDbServiceProvider).insert(todoData);
    setState(() {
      _isAdding = false;
    });
    ref.invalidate(todoListViewModelProvider);
    if (!mounted) {
      return;
    }
    context.pop();
  }

  Future<void> _update() async {
    final todo = widget.todo;
    if (todo == null) {
      return;
    }

    final updatedTodo = todo.copyWith(
      title: _titleController.text,
      detail: _detailController.text,
      status: _status,
      updatedAt: DateTime.now().toString(),
    );

    await ref.read(todoDbServiceProvider).update(updatedTodo);
    ref.invalidate(todoListViewModelProvider);
    if (!mounted) {
      return;
    }

    context.pop();
  }
}
