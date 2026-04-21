import 'package:flutter/material.dart';

class WidgetsLessonElevenScreen extends StatelessWidget {
  const WidgetsLessonElevenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const cardWidth = 300.0;
    const cardHeight = 150.0;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: const [
            ColorfullContainerWidget(
              cardWidth: cardWidth,
              cardHeight: cardHeight,
              color: Colors.blue,
            ),
            ColorfullContainerWidget(
              cardWidth: cardWidth,
              cardHeight: cardHeight,
              color: Colors.green,
            ),
            ColorfullContainerWidget(
              cardWidth: cardWidth,
              cardHeight: cardHeight,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class ColorfullContainerWidget extends StatelessWidget {
  const ColorfullContainerWidget({
    required this.cardWidth,
    required this.cardHeight,
    required this.color,
    super.key,
  });

  final double cardWidth;
  final double cardHeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        color: color,
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
    );
  }
}
