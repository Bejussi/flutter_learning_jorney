import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_cubit.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_state.dart';
import 'package:flutter_svg/svg.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({required this.maxRating, super.key});

  final int maxRating;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RateCubit, RateAppState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: List.generate(maxRating, (index) {
            final isSelected = index < state.selectedRating;
            return RatingStar(isSelected: isSelected, index: index);
          }),
        );
      },
    );
  }
}

class RatingStar extends StatelessWidget {
  const RatingStar({required this.isSelected, required this.index, super.key});

  final bool isSelected;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<RateCubit>().setRating(index + 1);
      },
      child: SvgPicture.asset(
        isSelected
            ? 'assets/images/star_full.svg'
            : 'assets/images/start_empty.svg',
        width: 34,
        height: 32,
      ),
    );
  }
}
