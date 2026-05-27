import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';
import 'package:flutter_learning_jorney/theme/button_style.dart';

class SubmitRatingButton extends StatelessWidget {
  const SubmitRatingButton({
    required this.isLoading,
    required this.canSubmit,
    required this.onPressed,
    super.key,
  });

  final bool isLoading;
  final bool canSubmit;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: canSubmit ? onPressed : null,
      style: buttonStyle(AppColors.appBarColor),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: isLoading
            ? const SizedBox(
                key: ValueKey('loading'),
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  color: Colors.white,
                ),
              )
            : const Text(
                key: ValueKey('text'),
                'Submit rating',
                style: AppTextStyles.buttonText,
              ),
      ),
    );
  }
}
