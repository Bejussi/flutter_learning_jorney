import 'package:flutter/material.dart';

class WidgetsLessonElevenScreen extends StatelessWidget {
  const WidgetsLessonElevenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const cardWidth = 300.0;
    const cardHeight = 150.0;

    return Scaffold(
      body: Center(
        child: Container(
          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 10),
                  Text(
                    'Привіт, Flutter!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
