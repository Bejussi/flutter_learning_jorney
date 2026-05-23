import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_buttons.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_stars.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_titile.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';

class RatingContentCard extends StatelessWidget {
  const RatingContentCard({required this.maxRating, super.key});

  final int maxRating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 48),
        Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundRateContainerColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .25),
                blurRadius: 4,
                offset: Offset(0, 4), // Position (dx, dy)
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(height: 32),
              RatingTitile(),
              const SizedBox(height: 24),
              RatingStars(maxRating: maxRating),
              const SizedBox(height: 24),
              RatingButtons(),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ],
    );
  }
}
