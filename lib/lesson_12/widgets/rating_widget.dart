import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/lesson_12/widgets/clickable_icon_widget_shadowed.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({super.key});

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int rating = 0;
  static const maxRating = 5;
  static const iconSize = 48.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.barColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: List.generate(
          maxRating,
          (index) => InkWell(
            onTap: () {
              setState(() {
                rating = (rating == index + 1) ? 0 : index + 1;
              });
            },
            child: ClickableIconShadowedWidget(
              selected: index < rating,
              fullIcon: 'assets/images/rating_full.svg',
              emptyIcon: 'assets/images/rating_empty.svg',
              width: iconSize,
              height: iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
