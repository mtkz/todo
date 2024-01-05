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
          widget: state.status == Status.loading
              ? const ListWidgetFake()
              : ListWidgetState(
                  state: state,
                ),
        );
      },
    );
  }
}

class ListWidgetFake extends StatelessWidget {
  const ListWidgetFake({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Todo> todos = List.generate(
      5,
      (index) => Todo(
          title: 'test base text',
          date: 'test',
          isChecked: false,
          onTap: () {},
          color: 'ffffff'),
    );

    return ListView.builder(
        itemCount: todos.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return Todo(
            title: todo.title,
            date: todo.date,
            isChecked: todo.isChecked,
            onTap: () {},
            color: todo.color,
          );
        });
  }
}

class ListWidgetState extends StatelessWidget {
  const ListWidgetState({
    super.key,
    required this.state,
  });

  final TodoState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
            color: todo.color,
          );
        });
  }
}
