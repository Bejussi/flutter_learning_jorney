import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/lesson_12/widgets/clickable_icon_widget.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';

class RatingButton extends StatelessWidget {
  const RatingButton({
    required this.isSelected,
    required this.onTap,
    required this.fullIcon,
    required this.emptyIcon,
    super.key,
  });

  final bool isSelected;
  final VoidCallback onTap;
  final String fullIcon;
  final String emptyIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: isSelected
            ? AppColors.selectedRatingColor
            : AppColors.unselectedRatingColor,
        child: ClickableIconWidget(
          fullIcon: fullIcon,
          emptyIcon: emptyIcon,
          selected: isSelected,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
