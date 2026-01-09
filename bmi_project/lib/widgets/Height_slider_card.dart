import 'package:bmi_project/widgets/Animated_card.dart';
import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final double height;
  final ValueChanged<double> onChanged;

  const HeightSlider({required this.height, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      delay: 100,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text("Height (CM)"),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Text(
                  "${height.toInt()}",
                  key: ValueKey(height.toInt()),
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Slider(min: 50, max: 300, value: height, onChanged: onChanged),
            ],
          ),
        ),
      ),
    );
  }
}
