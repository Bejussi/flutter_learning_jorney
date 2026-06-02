import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/lesson_21/ball_animation.dart';
import 'package:flutter_learning_jorney/lesson_21/widgets/bouncing_ball.dart';
import 'package:flutter_learning_jorney/lesson_21/widgets/cloud.dart';
import 'package:flutter_learning_jorney/lesson_21/widgets/grass.dart';
import 'package:flutter_learning_jorney/lesson_21/widgets/help_text.dart';
import 'package:flutter_learning_jorney/lesson_21/widgets/sky.dart';
import 'package:flutter_learning_jorney/lesson_21/widgets/sun.dart';

class ExplicitAnimationScreen extends StatefulWidget {
  const ExplicitAnimationScreen({super.key});

  @override
  State<ExplicitAnimationScreen> createState() =>
      _ExplicitAnimationScreenState();
}

class _ExplicitAnimationScreenState extends State<ExplicitAnimationScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  Animation<double>? _ballAnimation;

  static const _grassHeight = 120.0;
  static const _ballSize = 80.0;
  static const _jumpHeight = 350.0;
  static const animationDuration = Duration(milliseconds: 3000);

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: animationDuration,
    );
  }

  void _dropBall(double groundY) {
    if (_animationController.isAnimating) {
      return;
    }

    _ballAnimation = BallAnimation.createBallAnimation(
      groundY,
      _jumpHeight,
      _animationController,
    );
    _animationController.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated ball')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final groundY = constraints.maxHeight - _grassHeight - 65;

          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => _dropBall(groundY),
            child: Stack(
              children: [
                const Sky(),
                Positioned(
                  top: 20,
                  left: 20,
                  right: 20,
                  child: const HelpText(),
                ),
                Positioned(top: 80, right: 40, child: const Sun()),
                Positioned(left: 30, top: 80, child: const Cloud()),

                Positioned(left: 220, top: 140, child: const Cloud()),

                Positioned(left: 120, top: 220, child: const Cloud()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: const Grass(grassHeight: _grassHeight),
                ),
                AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Positioned(
                      left: constraints.maxWidth / 2 - _ballSize / 2,
                      top: _ballAnimation?.value ?? groundY,
                      child: child!,
                    );
                  },
                  child: BouncingBall(
                    animationController: _animationController,
                    ballSize: _ballSize,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
