import 'package:flutter/material.dart';

class Grass extends StatelessWidget {
  const Grass({required this.grassHeight, super.key});

  final double grassHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: grassHeight,
      child: Image.asset('assets/images/grass.png', fit: BoxFit.cover),
    );
  }
}
