import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';
import 'package:flutter_learning_jorney/lesson_12/widgets/input_text_field_widget.dart';
import 'package:flutter_learning_jorney/lesson_12/widgets/service_rating_widget.dart';

class CategoryReviewWidget extends StatelessWidget {
  const CategoryReviewWidget({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.barColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: AppTextStyles.subtitle),
          ),
          const ServiceRatingWidget(title: 'Обслуговування'),
          const ServiceRatingWidget(title: 'Асортимент'),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: InputTextFieldWidget(labelText: 'Розкажіть докладніше'),
          ),
        ],
      ),
    );
  }
}
