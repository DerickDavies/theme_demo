import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({
    super.key,
    required this.color,
    required this.child,
  });

  final Color? color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 200,
      width: 200,
      padding: EdgeInsets.all(50),
      child: child,
    );
  }
}
