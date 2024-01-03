import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/extensions/color_extension.dart';

class Todo extends StatelessWidget {
  const Todo({
    super.key,
    required this.title,
    required this.date,
    required this.isChecked,
    required this.onTap,
    required this.color,
  });

  final String title;
  final String date;
  final bool isChecked;
  final String color;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor.fromHex('#$color'),
        borderRadius: BorderRadius.circular(16),
      ),
      height: 60,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: onTap,
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
      ),
    );
  }
}
