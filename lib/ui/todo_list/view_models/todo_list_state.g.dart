// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoListState _$TodoListStateFromJson(Map<String, dynamic> json) =>
    _TodoListState(
      todoItems: (json['todoItems'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$TodoStatusEnumMap, k),
                (e as List<dynamic>)
                    .map((e) => Todo.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const <TodoStatus, List<Todo>>{},
    );

Map<String, dynamic> _$TodoListStateToJson(_TodoListState instance) =>
    <String, dynamic>{
      'todoItems': instance.todoItems
          .map((k, e) => MapEntry(_$TodoStatusEnumMap[k]!, e)),
    };

const _$TodoStatusEnumMap = {
  TodoStatus.untouched: 'untouched',
  TodoStatus.working: 'working',
  TodoStatus.done: 'done',
};
