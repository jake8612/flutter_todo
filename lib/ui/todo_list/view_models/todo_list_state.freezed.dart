// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoListState {
  Map<TodoStatus, List<Todo>> get todoItems;

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      _$TodoListStateCopyWithImpl<TodoListState>(
          this as TodoListState, _$identity);

  /// Serializes this TodoListState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoListState &&
            const DeepCollectionEquality().equals(other.todoItems, todoItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoItems));

  @override
  String toString() {
    return 'TodoListState(todoItems: $todoItems)';
  }
}

/// @nodoc
abstract mixin class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) _then) =
      _$TodoListStateCopyWithImpl;
  @useResult
  $Res call({Map<TodoStatus, List<Todo>> todoItems});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._self, this._then);

  final TodoListState _self;
  final $Res Function(TodoListState) _then;

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoItems = null,
  }) {
    return _then(_self.copyWith(
      todoItems: null == todoItems
          ? _self.todoItems
          : todoItems // ignore: cast_nullable_to_non_nullable
              as Map<TodoStatus, List<Todo>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [TodoListState].
extension TodoListStatePatterns on TodoListState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TodoListState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoListState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TodoListState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<TodoStatus, List<Todo>> todoItems)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TodoListState() when $default != null:
        return $default(_that.todoItems);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<TodoStatus, List<Todo>> todoItems) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListState():
        return $default(_that.todoItems);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Map<TodoStatus, List<Todo>> todoItems)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListState() when $default != null:
        return $default(_that.todoItems);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TodoListState implements TodoListState {
  const _TodoListState(
      {final Map<TodoStatus, List<Todo>> todoItems =
          const <TodoStatus, List<Todo>>{}})
      : _todoItems = todoItems;
  factory _TodoListState.fromJson(Map<String, dynamic> json) =>
      _$TodoListStateFromJson(json);

  final Map<TodoStatus, List<Todo>> _todoItems;
  @override
  @JsonKey()
  Map<TodoStatus, List<Todo>> get todoItems {
    if (_todoItems is EqualUnmodifiableMapView) return _todoItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_todoItems);
  }

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodoListStateCopyWith<_TodoListState> get copyWith =>
      __$TodoListStateCopyWithImpl<_TodoListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TodoListStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListState &&
            const DeepCollectionEquality()
                .equals(other._todoItems, _todoItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todoItems));

  @override
  String toString() {
    return 'TodoListState(todoItems: $todoItems)';
  }
}

/// @nodoc
abstract mixin class _$TodoListStateCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$TodoListStateCopyWith(
          _TodoListState value, $Res Function(_TodoListState) _then) =
      __$TodoListStateCopyWithImpl;
  @override
  @useResult
  $Res call({Map<TodoStatus, List<Todo>> todoItems});
}

/// @nodoc
class __$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateCopyWith<$Res> {
  __$TodoListStateCopyWithImpl(this._self, this._then);

  final _TodoListState _self;
  final $Res Function(_TodoListState) _then;

  /// Create a copy of TodoListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? todoItems = null,
  }) {
    return _then(_TodoListState(
      todoItems: null == todoItems
          ? _self._todoItems
          : todoItems // ignore: cast_nullable_to_non_nullable
              as Map<TodoStatus, List<Todo>>,
    ));
  }
}

// dart format on
