import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/todo/data/models/todo_date.dart';
import 'package:todo/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:todo/features/todo/presentation/widget/todo_date_item.dart';
import 'package:todo/features/todo/presentation/widget/widget_wrapper.dart';

class TodoDates extends StatelessWidget {
  const TodoDates({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TodoDate> dates = [
      const TodoDate(
        date: '28',
        day: 'Sun',
      ),
      const TodoDate(
        date: '29',
        day: 'Mon',
      ),
      const TodoDate(
        date: '30',
        day: 'Thu',
      ),
      const TodoDate(
        date: '01',
        day: 'Wed',
      ),
      const TodoDate(
        date: '02',
        day: 'Fri',
      ),
      const TodoDate(
        date: '03',
        day: 'Sat',
      ),
      const TodoDate(
        date: '04',
        day: 'Son',
      ),
    ];
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
      child: BlocBuilder<TodoBloc, TodoState>(
        buildWhen: (previous, current) =>
            previous.selectedDate != current.selectedDate,
        builder: (context, state) {
          return WidgetWrapper(
            verticalPadding: 20,
            widget: Flex(
                direction: Axis.horizontal,
                children: List.generate(
                  dates.length,
                  (index) {
                    final date = dates[index];
                    return TodoDateItem(
                      day: date.day,
                      date: date.date,
                      isActive: state.selectedDate == index,
                      onTap: () {
                        context
                            .read<TodoBloc>()
                            .add(TodoDateSelect(selectedDateIndex: index));
                      },
                    );
                  },
                ).toList()),
          );
        },
      ),
    );
  }
}
