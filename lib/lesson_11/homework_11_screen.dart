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
          spacing: 8,
          children: const [
            Flexible(
              flex: 2,
              child: ColorfullContainerWidget(
                cardWidth: cardWidth,
                cardHeight: null,
                color: Colors.blue,
                alignment: Alignment.topLeft,
              ),
            ),
            ColorfullContainerWidget(
              cardWidth: cardWidth,
              cardHeight: cardHeight,
              color: Colors.green,
              alignment: Alignment.center,
            ),
            ColorfullContainerWidget(
              cardWidth: cardWidth,
              cardHeight: cardHeight,
              color: Colors.red,
              alignment: Alignment.bottomRight,
            ),
            Spacer(),
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
    required this.alignment,
    super.key,
  });

  final double cardWidth;
  final double? cardHeight;
  final Color color;
  final Alignment alignment;

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
          alignment: alignment,
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
