import 'package:flutter/material.dart';

class BallAnimation {
  static Animation<double> createBallAnimation(
    double groundY,
    double jumpHeight,
    AnimationController animationController,
  ) {
    return TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: groundY,
          end: groundY - jumpHeight,
        ).chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 25,
      ),

      TweenSequenceItem(
        tween: ConstantTween<double>(groundY - jumpHeight),
        weight: 6,
      ),

      TweenSequenceItem(
        tween: Tween<double>(
          begin: groundY - jumpHeight,
          end: groundY,
        ).chain(CurveTween(curve: Curves.easeInCubic)),
        weight: 25,
      ),

      TweenSequenceItem(
        tween: Tween<double>(
          begin: groundY,
          end: groundY - 140,
        ).chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 15,
      ),

      TweenSequenceItem(
        tween: Tween<double>(
          begin: groundY - 140,
          end: groundY,
        ).chain(CurveTween(curve: Curves.easeInCubic)),
        weight: 15,
      ),

      TweenSequenceItem(
        tween: Tween<double>(
          begin: groundY,
          end: groundY - 80,
        ).chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 10,
      ),

      TweenSequenceItem(
        tween: Tween<double>(
          begin: groundY - 80,
          end: groundY,
        ).chain(CurveTween(curve: Curves.easeInCubic)),
        weight: 10,
      ),

      TweenSequenceItem(tween: ConstantTween<double>(groundY), weight: 5),
    ]).animate(animationController);
  }
}
