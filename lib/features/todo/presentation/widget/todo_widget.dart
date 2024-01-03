import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:todo/features/todo/presentation/widget/todo_body.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) => switch (state.status) {
        Status.loading => const Center(child: CircularProgressIndicator()),
        _ => const TodoWidgetBody()
      },
    );
  }
}
