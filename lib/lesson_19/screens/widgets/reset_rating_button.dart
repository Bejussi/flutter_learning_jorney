import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_cubit.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_buttons.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';

class ResetRatingButton extends StatelessWidget {
  const ResetRatingButton({required this.isLoading, super.key});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
        onPressed: isLoading
            ? null
            : () {
                context.read<RateCubit>().resetRating();
              },
        icon: const Icon(Icons.refresh, color: Colors.white),
        style: buttonStyle(AppColors.resetButtonColor),
        label: const Text('Reset Rating', style: AppTextStyles.buttonText),
      ),
    );
  }
}
