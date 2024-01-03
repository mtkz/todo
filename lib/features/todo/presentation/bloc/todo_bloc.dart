import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/todo/data/models/todo.dart';
import 'package:todo/features/todo/data/repository/todo_repository_impl.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepositoryImpl todoRepository = TodoRepositoryImpl();

  TodoBloc() : super(TodoState()) {
    on<TodoInit>(_onInitTodos);
    on<TodoToggle>(_onTodoToggle);
  }
  Future<void> _onInitTodos(TodoInit event, Emitter<TodoState> emit) async {
    final List<Todo> todos = await todoRepository.getTodos();

    emit(state.copyWith(todos: todos, status: Status.success));
  }

  Future<void> _onTodoToggle(TodoToggle event, Emitter<TodoState> emit) async {
    final todoIndex =
        state.todos!.indexWhere((element) => element.color == event.todo.color);

    if (todoIndex != -1) {
      final updatedtodos = state.todos;

      updatedtodos![todoIndex] = updatedtodos[todoIndex]
          .copyWith(isChecked: !updatedtodos[todoIndex].isChecked);

      emit(state.copyWith(todos: updatedtodos));
    }
  }
}
