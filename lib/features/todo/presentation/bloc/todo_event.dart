part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}

class TodoInit extends TodoEvent {}

class TodoToggle extends TodoEvent {
  final Todo todo;

  TodoToggle({required this.todo});
}
