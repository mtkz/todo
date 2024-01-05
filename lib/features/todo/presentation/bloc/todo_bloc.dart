import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/features/todo/data/models/todo.dart';
import 'package:todo/features/todo/domain/repository/todo_repository.dart';

part 'todo_event.dart';
part 'todo_state.dart';

part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository todoRepository;

  TodoBloc({required this.todoRepository}) : super(const TodoState()) {
    on<TodoInit>(_onInitTodos);
    on<TodoToggle>(_onTodoToggle);
    on<TodoDateSelect>(_onTodoDateSelect);
  }
  Future<void> _onInitTodos(TodoInit event, Emitter<TodoState> emit) async {
    final List<Todo> todos = await todoRepository.getTodos();

    emit(state.copyWith(todos: todos, status: Status.success));
  }

  Future<void> _onTodoToggle(TodoToggle event, Emitter<TodoState> emit) async {
    final todoIndex =
        state.todos!.indexWhere((element) => element.color == event.todo.color);

    if (todoIndex != -1) {
      // Create a copy of the todos list
      final List<Todo> updatedTodos = List.from(state.todos!);

      // Update the specific todo item
      updatedTodos[todoIndex] = updatedTodos[todoIndex].copyWith(
        isChecked: !updatedTodos[todoIndex].isChecked,
      );

      // Emit the updated state with the new todos list
      emit(state.copyWith(todos: updatedTodos));
    }
  }

  Future<void> _onTodoDateSelect(
      TodoDateSelect event, Emitter<TodoState> emit) async {
    emit(state.copyWith(selectedDate: event.selectedDateIndex));
  }
}
