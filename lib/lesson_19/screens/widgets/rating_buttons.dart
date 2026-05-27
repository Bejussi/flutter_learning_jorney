import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rate_again_button.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/reset_rating_button.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/submit_rating_button.dart';

class RatingButtons extends StatelessWidget {
  const RatingButtons({
    required this.isSuccess,
    required this.isLoading,
    required this.canSubmit,
    required this.onSubmit,
    required this.onReset,
    required this.onRateAgain,
    super.key,
  });

  final bool isSuccess;
  final bool isLoading;
  final bool canSubmit;

  final VoidCallback onSubmit;
  final VoidCallback onReset;
  final VoidCallback onRateAgain;

  @override
  Widget build(BuildContext context) {
    if (isSuccess) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.5),
        child: SizedBox(
          width: double.infinity,
          child: RateAgainButton(onPressed: onRateAgain),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.5),
      child: Row(
        spacing: 10,
        children: [
          Expanded(
            child: SubmitRatingButton(
              isLoading: isLoading,
              canSubmit: canSubmit,
              onPressed: onSubmit,
            ),
          ),
          Expanded(
            child: ResetRatingButton(isLoading: isLoading, onPressed: onReset),
          ),
        ],
      ),
    );
  }
}
