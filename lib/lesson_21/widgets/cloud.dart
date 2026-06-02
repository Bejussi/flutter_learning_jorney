import 'package:flutter/material.dart';

class Cloud extends StatelessWidget {
  const Cloud({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.cloud,
      size: 80,
      color: Colors.white.withValues(alpha: .9),
    );
  }
}
