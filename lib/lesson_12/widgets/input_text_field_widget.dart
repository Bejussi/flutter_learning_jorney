import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/lesson_12/theme/app_colors.dart';
import 'package:flutter_learning_jorney/lesson_12/theme/app_text_styles.dart';

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget({required this.labelText, super.key});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppTextStyles.inputFieldLabel,
        enabledBorder: _border(AppColors.unselectedInputBorderColor),
        focusedBorder: _border(AppColors.selectedInputBorderColor),
      ),
    );
  }

  OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 1),
    );
  }
}
