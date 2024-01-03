import 'package:flutter/material.dart';

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
