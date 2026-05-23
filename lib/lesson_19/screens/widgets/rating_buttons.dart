import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_cubit.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_state.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_status.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rate_again_button.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/reset_rating_button.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/submit_rating_button.dart';

class RatingButtons extends StatelessWidget {
  const RatingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RateCubit, RateAppState>(
      builder: (context, state) {
        if (state.status == RateAppStatus.success) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.5),
            child: SizedBox(width: double.infinity, child: RateAgainButton()),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Expanded(
                child: SubmitRatingButton(
                  isLoading: state.status == RateAppStatus.loading,
                  canSubmit:
                      state.selectedRating > 0 &&
                      state.status != RateAppStatus.loading,
                ),
              ),
              ResetRatingButton(
                isLoading: state.status == RateAppStatus.loading,
              ),
            ],
          ),
        );
      },
    );
  }
}

ButtonStyle buttonStyle(Color color) {
  return ElevatedButton.styleFrom(
    backgroundColor: color,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
}
