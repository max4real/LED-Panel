import 'package:flutter/material.dart';

class LEDDot extends StatelessWidget {
  final Color color;
  final double size;

  const LEDDot({
    super.key,
    required this.color,
    this.size = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size / 2),
      ),
    );
  }
}