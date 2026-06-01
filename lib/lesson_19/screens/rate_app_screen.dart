import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_cubit.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_state.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_status.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/widgets/rating_content_card.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class RateAppScreen extends StatelessWidget {
  const RateAppScreen({super.key});

  static const maxRating = 5;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        final cubit = context.read<RateCubit>();

        if (cubit.state.status != RateAppStatus.success) {
          cubit.resetRating();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Lab', style: AppTextStyles.titleRate),
          backgroundColor: AppColors.appBarColor,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: AppColors.backgroundRateColor,
        body: BlocListener<RateCubit, RateAppState>(
          listenWhen: (previous, current) {
            return current.status == RateAppStatus.success;
          },
          listener: (context, state) {
            context.pop(true);
            ScaffoldMessenger.of(context).showSnackBar(_showCustomSnackBar());
          },
          child: BlocBuilder<RateCubit, RateAppState>(
            builder: (context, state) {
              return RatingContentCard(
                maxRating: maxRating,

                isSuccess: state.status == RateAppStatus.success,

                isLoading: state.status == RateAppStatus.loading,

                selectedRating: state.selectedRating,

                canSubmit:
                    state.selectedRating > 0 &&
                    state.status != RateAppStatus.loading,

                onRatingTap: (rating) {
                  context.read<RateCubit>().setRating(rating);
                },

                onSubmit: () {
                  context.read<RateCubit>().submitRating();
                },

                onReset: () {
                  context.read<RateCubit>().resetRating();
                },

                onRateAgain: () {
                  context.read<RateCubit>().resetRating();
                },
              );
            },
          ),
        ),
      ),
    );
  }

  SnackBar _showCustomSnackBar() {
    return SnackBar(
      duration: Duration(seconds: 3),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 12,
        children: [
          SvgPicture.asset(
            'assets/images/star_smile.svg',
            width: 21,
            height: 20,
          ),
          const Text('Rating submitted successfully'),
          SvgPicture.asset(
            'assets/images/star_smile.svg',
            width: 21,
            height: 20,
          ),
        ],
      ),
      backgroundColor: AppColors.resetButtonColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
