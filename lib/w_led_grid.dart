import 'package:flutter/material.dart';
import 'package:led_panel/w_led_dot.dart';
import 'package:led_panel/d_map.dart';

class NumberGrid extends StatelessWidget {
  final int currentNumber;
  final int ledCount;
  final double ledSize;

  const NumberGrid({
    super.key,
    required this.currentNumber,
    required this.ledCount,
    required this.ledSize,
  });

  List<int> _getIndicesFromCoordinates(List<List<int>> coordinates) {
    return coordinates.map((coord) {
      int row = coord[0];
      int col = coord[1];
      return (row * ledCount) + col;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final int totalLEDs = ledCount * 13;

    final numberIndices = _getIndicesFromCoordinates(
        Coordinates().numbersCoordinates[currentNumber] ?? []);

    return SizedBox(
      width: 100,
      height: 200,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300), // Smooth fade animation
        child: GridView.builder(
          key: ValueKey<int>(currentNumber), // Trigger animation
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ledCount,
            crossAxisSpacing: 0.5,
            mainAxisSpacing: 0.5,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: totalLEDs,
          itemBuilder: (context, index) {
            final color =
                numberIndices.contains(index) ? Colors.white : Colors.black;
            return LEDDot(
              color: color,
              size: ledSize,
            );
          },
        ),
      ),
    );
  }
}
