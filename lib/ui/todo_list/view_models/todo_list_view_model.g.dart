// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodoListViewModel)
final todoListViewModelProvider = TodoListViewModelProvider._();

final class TodoListViewModelProvider
    extends $AsyncNotifierProvider<TodoListViewModel, TodoListState> {
  TodoListViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'todoListViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$todoListViewModelHash();

  @$internal
  @override
  TodoListViewModel create() => TodoListViewModel();
}

String _$todoListViewModelHash() => r'88ef0fb9aae7e273a88a8440b3936ae51f9b4d81';

abstract class _$TodoListViewModel extends $AsyncNotifier<TodoListState> {
  FutureOr<TodoListState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<TodoListState>, TodoListState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<TodoListState>, TodoListState>,
        AsyncValue<TodoListState>,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
