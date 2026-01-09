import 'package:bmi_project/widgets/Animated_card.dart';
import 'package:flutter/material.dart';

class GenderSelector extends StatelessWidget {
  final bool isMale;
  final ValueChanged<bool> onChanged;

  const GenderSelector({required this.isMale, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      delay: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text("Gender"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Male"),
                  Switch(value: !isMale, onChanged: (v) => onChanged(!v)),
                  const Text("Female"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
