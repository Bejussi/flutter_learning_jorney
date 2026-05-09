import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class ClickableIconShadowedWidget extends StatelessWidget {
  const ClickableIconShadowedWidget({
    required this.width,
    required this.height,
    required this.fullIcon,
    required this.emptyIcon,
    required this.selected,
    super.key,
  });

  final bool selected;
  final String fullIcon;
  final String emptyIcon;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final asset = selected ? fullIcon : emptyIcon;

    return Stack(
      children: [
        Positioned(
          top: 4,
          right: 4,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Opacity(
              opacity: 0.3,
              child: SvgPicture.asset(
                asset,
                width: width,
                height: height,
                colorFilter: !selected
                    ? ColorFilter.mode(AppColors.shadowColor, BlendMode.srcIn)
                    : null,
              ),
            ),
          ),
        ),
        SvgPicture.asset(asset, width: width, height: height),
      ],
    );
  }
}
