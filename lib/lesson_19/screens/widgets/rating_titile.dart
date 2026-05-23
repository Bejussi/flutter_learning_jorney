import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_cubit.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_state.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_status.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';

class RatingTitile extends StatelessWidget {
  const RatingTitile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<RateCubit, RateAppState, RateAppStatus>(
      selector: (state) => state.status,
      builder: (context, status) {
        return Text(
          status == RateAppStatus.success
              ? 'You rated the app'
              : 'How would you rate the app?',
          style: AppTextStyles.title.copyWith(color: AppColors.appBarColor),
        );
      },
    );
  }
}
