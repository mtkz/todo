import 'package:flutter/material.dart';
import 'package:todo/features/todo/presentation/widget/todo_dates.dart';
import 'package:todo/features/todo/presentation/widget/todo_list.dart';
import 'package:todo/features/todo/presentation/widget/todo_title.dart';

class TodoWidgetBody extends StatelessWidget {
  const TodoWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TodoDates(),
          TodoTitle(),
          TodoList(),
        ],
      ),
    );
  }
}
