import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/di/service_locator.dart';
import 'package:todo/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:todo/features/todo/presentation/widget/todo_widget.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(CupertinoIcons.back),
        title: const Text(
          'Schedule',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: BlocProvider(
        create: (context) => serviceLocator<TodoBloc>()..add(TodoInit()),
        child: const TodoWidget(),
      ),
    );
  }
}
