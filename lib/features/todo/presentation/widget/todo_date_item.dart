import 'package:flutter/material.dart';

class TodoDateItem extends StatelessWidget {
  const TodoDateItem({
    super.key,
    required this.day,
    required this.date,
    required this.isActive,
    required this.onTap,
  });

  final String day;
  final String date;
  final bool isActive;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isActive ? Colors.green.shade600 : null,
            borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: InkWell(
          onTap: onTap,
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
      ),
    );
  }
}
