import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final double bmi;
  const DetailsScreen({required this.bmi});

  String get status {
    if (bmi < 18.5) return "UNDERWEIGHT";
    if (bmi < 24.9) return "NORMAL BMI";
    if (bmi < 29.9) return "OVERWEIGHT";
    return "OBESE";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI RESULT")),
      body: Center(
        child: TweenAnimationBuilder(
          duration: const Duration(milliseconds: 600),
          tween: Tween(begin: 0.8, end: 1.0),
          builder: (context, value, _) {
            return Transform.scale(
              scale: value,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("BMI Results", style: TextStyle(fontSize: 22)),
                      const SizedBox(height: 20),
                      Text(
                        bmi.toStringAsFixed(2),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(status, style: const TextStyle(color: Colors.green)),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
