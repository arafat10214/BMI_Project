import 'package:flutter/material.dart';

class AnimatedCard extends StatelessWidget {
  final Widget child;
  final int delay;

  const AnimatedCard({required this.child, this.delay = 0});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 500 + delay),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, _) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
    );
  }
}
