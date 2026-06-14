import 'package:flutter/material.dart';

class HelpText extends StatelessWidget {
  const HelpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Tap anywhere to bounce the ball 🏀',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
