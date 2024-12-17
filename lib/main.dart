import 'dart:async';
import 'package:flutter/material.dart';
import 'package:led_panel/w_led_grid.dart';

void main() {
  runApp(const LEDPanel());
}

class LEDPanel extends StatefulWidget {
  const LEDPanel({super.key});

  @override
  State<LEDPanel> createState() => _LEDPanelState();
}

class _LEDPanelState extends State<LEDPanel> {
  static const int defaultLEDCount = 9;
  static const double defaultLEDSize = 5;

  int currentNumber1 = 0;
  int currentNumber2 = 0;

  Timer? _timer;
  ValueNotifier<bool> isTimerRunning = ValueNotifier(false);

  void _startTimers() {
    if (isTimerRunning.value) return;
    isTimerRunning.value = true;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        currentNumber2 = (currentNumber2 + 1) % 10;
        if (currentNumber2 == 0) {
          currentNumber1 = (currentNumber1 + 1) % 10;
        }
      });
    });
  }

  void _stopTimers() {
    if (isTimerRunning.value) {
      _timer?.cancel();
      isTimerRunning.value = false;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text("LED Panel"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberGrid(
                  currentNumber: currentNumber1,
                  ledCount: defaultLEDCount,
                  ledSize: defaultLEDSize,
                ),
                NumberGrid(
                  currentNumber: currentNumber2,
                  ledCount: defaultLEDCount,
                  ledSize: defaultLEDSize,
                ),
              ],
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder(
              valueListenable: isTimerRunning,
              builder: (context, value, child) {
                return ElevatedButton(
                  onPressed: value ? _stopTimers : _startTimers,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: value ? Colors.red : Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                  ),
                  child: Text(
                    value ? "Stop" : "Start",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
