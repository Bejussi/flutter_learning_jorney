import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_cubit.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_buttons.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';

class SubmitRatingButton extends StatelessWidget {
  const SubmitRatingButton({
    required this.isLoading,
    required this.canSubmit,
    super.key,
  });

  final bool isLoading;
  final bool canSubmit;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: !canSubmit
          ? null
          : () {
              context.read<RateCubit>().submitRating();
            },
      style: buttonStyle(AppColors.appBarColor),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: isLoading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  color: Colors.white,
                ),
              )
            : const Text('Submit rating', style: AppTextStyles.buttonText),
      ),
    );
  }
}
