import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _TodoDateWidget(),
            WidgetWrapper(
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
            ),
            const _TodoItems(),
          ],
        ),
      ),
    );
  }
}

class _TodoItems extends StatelessWidget {
  const _TodoItems();

  @override
  Widget build(BuildContext context) {
    return const WidgetWrapper(
      verticalPadding: 20,
      widget: Column(
        children: [
          _Todo(
            title: 'title',
            date: '10 am',
            isChecked: true,
          ),
          _Todo(
            title: 'title',
            date: '10 am',
            isChecked: false,
          ),
          _Todo(
            title: 'title',
            date: '10 am',
            isChecked: false,
          ),
          _Todo(
            title: 'title',
            date: '10 am',
            isChecked: false,
          ),
          _Todo(
            title: 'title',
            date: '10 am',
            isChecked: false,
          ),
        ],
      ),
    );
  }
}

class _Todo extends StatelessWidget {
  const _Todo({
    required this.title,
    required this.date,
    required this.isChecked,
  });

  final String title;
  final String date;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 60,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 12),
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          Icon(
            isChecked
                ? CupertinoIcons.check_mark_circled
                : CupertinoIcons.circle,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class _TodoDateWidget extends StatelessWidget {
  const _TodoDateWidget();

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

class TodoDateItem extends StatelessWidget {
  const TodoDateItem({
    super.key,
    required this.day,
    required this.date,
    required this.isActive,
  });

  final String day;
  final String date;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isActive ? Colors.green.shade600 : null,
            borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              day,
              style: TextStyle(
                color: !isActive ? Colors.grey.shade800 : Colors.white,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 6),
            Text(date,
                style: TextStyle(
                  color: !isActive ? Colors.grey.shade800 : Colors.white,
                  fontSize: 12,
                )),
          ],
        ),
      ),
    );
  }
}

class WidgetWrapper extends StatelessWidget {
  const WidgetWrapper({
    super.key,
    required this.widget,
    this.verticalPadding = 0,
  });

  final Widget widget;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding!,
        horizontal: 32,
      ),
      child: widget,
    );
  }
}
