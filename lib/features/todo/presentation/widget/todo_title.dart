import 'package:flutter/material.dart';
import 'package:todo/features/todo/presentation/widget/widget_wrapper.dart';

class TodoTitle extends StatelessWidget {
  const TodoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetWrapper(
      verticalPadding: 10,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Sunday',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          Text(
            'Sunday',
            style: TextStyle(color: Colors.grey.shade800),
          ),
        ],
      ),
    );
  }
}
