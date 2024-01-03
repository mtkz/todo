import 'package:flutter/material.dart';
import 'package:todo/features/todo/presentation/widget/todo_date_item.dart';
import 'package:todo/features/todo/presentation/widget/widget_wrapper.dart';

class TodoDates extends StatelessWidget {
  const TodoDates({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
      ),
      child: const WidgetWrapper(
        verticalPadding: 20,
        widget: Flex(
          direction: Axis.horizontal,
          children: [
            TodoDateItem(
              day: 'Sun',
              date: '28',
              isActive: true,
            ),
            TodoDateItem(
              day: 'Sun',
              date: '28',
              isActive: false,
            ),
            TodoDateItem(
              day: 'Sun',
              date: '28',
              isActive: false,
            ),
            TodoDateItem(
              day: 'Sun',
              date: '28',
              isActive: false,
            ),
            TodoDateItem(
              day: 'Sun',
              date: '28',
              isActive: false,
            ),
            TodoDateItem(
              day: 'Sun',
              date: '28',
              isActive: false,
            ),
            TodoDateItem(
              day: 'Sun',
              date: '28',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
