part of 'todo_bloc.dart';

enum Status { loading, success, failure }

class TodoState {
  TodoState({
    this.status = Status.loading,
    this.todos = const [],
  });

  final Status status;
  final List<Todo>? todos;

  TodoState copyWith({
    Status? status,
    List<Todo>? todos,
  }) {
    return TodoState(
      status: status ?? this.status,
      todos: todos ?? this.todos,
    );
  }
}
