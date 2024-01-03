part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}

class TodoInit extends TodoEvent {}

class TodoToggle extends TodoEvent {
  final Todo todo;

  TodoToggle({required this.todo});
}

class TodoDateSelect extends TodoEvent {
  final int selectedDateIndex;

  TodoDateSelect({required this.selectedDateIndex});
}
