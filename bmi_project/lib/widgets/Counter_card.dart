import 'package:bmi_project/widgets/Animated_card.dart';
import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const CounterCard({
    required this.title,
    required this.value,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedCard(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(title),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Text(
                    "$value",
                    key: ValueKey(value),
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: onRemove,
                      icon: const Icon(Icons.remove),
                    ),
                    IconButton(onPressed: onAdd, icon: const Icon(Icons.add)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
