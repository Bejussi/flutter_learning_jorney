import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';
import 'package:flutter_learning_jorney/theme/button_style.dart';

class RateAgainButton extends StatelessWidget {
  const RateAgainButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle(AppColors.appBarColor),
      child: const Text('Rate Again', style: AppTextStyles.buttonText),
    );
  }
}
