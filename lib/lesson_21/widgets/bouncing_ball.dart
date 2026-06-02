import 'dart:math' as math;
import 'package:flutter/material.dart';

class BouncingBall extends StatelessWidget {
  const BouncingBall({
    required this.animationController,
    required this.ballSize,
    super.key,
  });

  final AnimationController animationController;
  final double ballSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Transform.rotate(
          angle: animationController.value * 6 * math.pi,
          child: child,
        );
      },
      child: Image.asset(
        'assets/images/ball.png',
        width: ballSize,
        height: ballSize,
      ),
    );
  }
}
