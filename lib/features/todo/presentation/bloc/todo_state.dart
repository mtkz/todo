part of 'todo_bloc.dart';

enum Status { loading, success, failure }

class TodoState {
  TodoState({
    this.status = Status.loading,
    this.todos = const [],
    this.selectedDate,
  });

  final Status status;
  final List<Todo>? todos;
  final int? selectedDate;

  TodoState copyWith({
    Status? status,
    List<Todo>? todos,
    int? selectedDate,
  }) {
    return TodoState(
      status: status ?? this.status,
      todos: todos ?? this.todos,
      selectedDate: selectedDate ?? this.selectedDate,
    );
  }
}
