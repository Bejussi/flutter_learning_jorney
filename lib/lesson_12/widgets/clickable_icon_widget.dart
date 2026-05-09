import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClickableIconWidget extends StatelessWidget {
  const ClickableIconWidget({
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
    return SvgPicture.asset(asset, width: width, height: height);
  }
}
