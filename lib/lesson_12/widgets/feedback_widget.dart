import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/lesson_12/widgets/input_text_field_widget.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';

class FeedbackInputSection extends StatelessWidget {
  const FeedbackInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 12),
          Text('Є що додати?', style: AppTextStyles.subtitle),
          SizedBox(height: 18),
          InputTextFieldWidget(labelText: 'Поділіться загальним враженням'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
