import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_cubit.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_buttons.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';

class RateAgainButton extends StatelessWidget {
  const RateAgainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<RateCubit>().resetRating();
      },
      style: buttonStyle(AppColors.appBarColor),
      child: const Text('Rate Again', style: AppTextStyles.buttonText),
    );
  }
}
