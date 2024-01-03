import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:todo/features/todo/presentation/widget/todo.dart';
import 'package:todo/features/todo/presentation/widget/widget_wrapper.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return WidgetWrapper(
          verticalPadding: 20,
          widget: ListView.builder(
              itemCount: state.todos!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final todo = state.todos![index];
                return Todo(
                  title: todo.text,
                  date: todo.time,
                  isChecked: todo.isChecked,
                  onTap: () {
                    context.read<TodoBloc>().add(TodoToggle(todo: todo));
                  },
                );
              }),
        );
      },
    );
  }
}
