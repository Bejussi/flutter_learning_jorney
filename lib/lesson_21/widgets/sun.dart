import 'package:flutter/material.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow.shade300,
        boxShadow: [
          BoxShadow(
            color: Colors.yellow.withValues(alpha: .6),
            blurRadius: 30,
            spreadRadius: 10,
          ),
        ],
      ),
    );
  }
}
