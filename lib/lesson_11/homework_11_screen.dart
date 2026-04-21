import 'package:flutter/material.dart';

class WidgetsLessonElevenScreen extends StatelessWidget {
  const WidgetsLessonElevenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
        ),
      ),
    );
  }
}
