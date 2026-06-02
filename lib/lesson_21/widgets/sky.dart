import 'package:flutter/material.dart';

class Sky extends StatelessWidget {
  const Sky({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF4FC3F7), Color(0xFF81D4FA), Color(0xFFE1F5FE)],
        ),
      ),
    );
  }
}
