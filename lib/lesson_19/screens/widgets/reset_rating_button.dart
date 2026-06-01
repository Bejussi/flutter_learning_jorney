import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';
import 'package:flutter_learning_jorney/theme/button_style.dart';

class ResetRatingButton extends StatelessWidget {
  const ResetRatingButton({
    required this.isLoading,
    required this.onPressed,
    super.key,
  });

  final bool isLoading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: isLoading ? null : onPressed,
      icon: const Icon(Icons.refresh, color: Colors.white),
      style: buttonStyle(AppColors.resetButtonColor),
      label: const Text('Reset Rating', style: AppTextStyles.buttonText),
    );
  }
}
