import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_cubit.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_state.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_buttons.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_stars.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_titile.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';

class RatingContentCard extends StatelessWidget {
  const RatingContentCard({
    required this.maxRating,
    required this.isSuccess,
    required this.isLoading,
    required this.selectedRating,
    required this.canSubmit,
    required this.onRatingTap,
    required this.onSubmit,
    required this.onReset,
    required this.onRateAgain,
    super.key,
  });

  final int maxRating;
  final bool isSuccess;
  final bool isLoading;
  final int selectedRating;
  final bool canSubmit;

  final ValueChanged<int> onRatingTap;

  final VoidCallback onSubmit;
  final VoidCallback onReset;
  final VoidCallback onRateAgain;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RateCubit, RateAppState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 48),
            Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundRateContainerColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .25),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 32),

                  RatingTitle(isSuccess: isSuccess),

                  const SizedBox(height: 24),

                  RatingStars(
                    maxRating: maxRating,
                    selectedRating: selectedRating,
                    onRatingTap: onRatingTap,
                  ),

                  const SizedBox(height: 24),

                  RatingButtons(
                    isSuccess: isSuccess,
                    isLoading: isLoading,
                    canSubmit: canSubmit,
                    onSubmit: onSubmit,
                    onReset: onReset,
                    onRateAgain: onRateAgain,
                  ),

                  const SizedBox(height: 48),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
