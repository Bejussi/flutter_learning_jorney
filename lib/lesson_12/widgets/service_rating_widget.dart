import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/lesson_12/theme/app_colors.dart';
import 'package:flutter_learning_jorney/lesson_12/theme/app_text_styles.dart';
import 'package:flutter_learning_jorney/lesson_12/utils/rating_type.dart';
import 'package:flutter_learning_jorney/lesson_12/widgets/rating_button.dart';

class ServiceRatingWidget extends StatefulWidget {
  const ServiceRatingWidget({required this.title, super.key});

  final String title;

  @override
  State<ServiceRatingWidget> createState() => _ServiceRatingWidgetState();
}

class _ServiceRatingWidgetState extends State<ServiceRatingWidget> {
  RatingType selected = RatingType.none;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.backgroundRatingColor,
        border: Border.all(width: 1, color: AppColors.borderRatingColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        spacing: 12,
        children: [
          Text(widget.title, style: AppTextStyles.ratingServiceTitle),
          const Spacer(),
          RatingButton(
            isSelected: selected == RatingType.dislike,
            onTap: () {
              setState(() {
                selected = selected == RatingType.dislike
                    ? RatingType.none
                    : RatingType.dislike;
              });
            },
            fullIcon: 'assets/images/dislike_full.svg',
            emptyIcon: 'assets/images/dislike_empty.svg',
          ),
          RatingButton(
            isSelected: selected == RatingType.like,
            onTap: () {
              setState(() {
                selected = selected == RatingType.like
                    ? RatingType.none
                    : RatingType.like;
              });
            },
            fullIcon: 'assets/images/like_full.svg',
            emptyIcon: 'assets/images/like_empty.svg',
          ),
        ],
      ),
    );
  }
}
