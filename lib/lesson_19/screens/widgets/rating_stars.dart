import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    required this.maxRating,
    required this.selectedRating,
    required this.onRatingTap,
    super.key,
  });

  final int maxRating;
  final int selectedRating;
  final ValueChanged<int> onRatingTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: List.generate(maxRating, (index) {
        final isSelected = index < selectedRating;

        return RatingStar(
          isSelected: isSelected,
          onTap: () {
            onRatingTap(index + 1);
          },
        );
      }),
    );
  }
}

class RatingStar extends StatelessWidget {
  const RatingStar({required this.isSelected, required this.onTap, super.key});

  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: SvgPicture.asset(
        isSelected
            ? 'assets/images/star_full.svg'
            : 'assets/images/star_empty.svg',
        width: 34,
        height: 32,
      ),
    );
  }
}
