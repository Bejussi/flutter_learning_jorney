import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';

class RatingTitle extends StatelessWidget {
  const RatingTitle({required this.isSuccess, super.key});

  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Text(
      isSuccess ? 'You rated the app' : 'How would you rate the app?',
      style: AppTextStyles.title.copyWith(color: AppColors.appBarColor),
    );
  }
}
