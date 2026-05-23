import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';

class AppTextStyles {
  static const title = TextStyle(
    fontSize: 20,
    fontFamily: 'SilpoText',
    fontWeight: FontWeight.w600,
  );

  static const titleRate = TextStyle(
    fontSize: 20,
    fontFamily: 'SilpoText',
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const subtitle = TextStyle(
    fontSize: 18,
    fontFamily: 'SilpoText',
    fontWeight: FontWeight.w600,
  );

  static final ratingServiceTitle = TextStyle(
    fontSize: 16,
    fontFamily: 'SilpoText',
    fontWeight: FontWeight.w400,
    color: AppColors.ratingServiceTextColor,
  );

  static final inputFieldLabel = TextStyle(
    color: AppColors.inputLabelTextColor,
    fontSize: 16,
    fontFamily: 'SilpoText',
    fontWeight: FontWeight.w400,
  );

  static const buttonText = TextStyle(
    fontSize: 16,
    color: AppColors.buttonTextColor,
    fontFamily: 'SilpoText',
    fontWeight: FontWeight.w600,
  );
}
