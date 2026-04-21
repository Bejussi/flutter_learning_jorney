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

class ColorfullContainerWidget extends StatefulWidget {
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
  State<ColorfullContainerWidget> createState() =>
      _ColorfullContainerWidgetState();
}

class _ColorfullContainerWidgetState extends State<ColorfullContainerWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: widget.cardWidth,
        height: widget.cardHeight,
        decoration: BoxDecoration(
          color: selected
              ? Color.lerp(widget.color, Colors.black, 0.2)
              : widget.color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ]
              : [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: widget.alignment,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                StarIconWidget(selected: selected),
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
                StarIconWidget(selected: selected),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StarIconWidget extends StatelessWidget {
  const StarIconWidget({required this.selected, super.key});

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Icon(
      selected ? Icons.star : Icons.star_border,
      color: Colors.yellow,
    );
  }
}
