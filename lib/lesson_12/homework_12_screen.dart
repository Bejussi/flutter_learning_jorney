import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/lesson_12/widgets/category_review_widget.dart';
import 'package:flutter_learning_jorney/lesson_12/widgets/feedback_widget.dart';
import 'package:flutter_learning_jorney/lesson_12/widgets/rating_widget.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';

class LessonTwelveScreen extends StatelessWidget {
  const LessonTwelveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: AppColors.barColor,
        title: const Text(
          'Оцінка візиту до магазину',
          style: AppTextStyles.title,
        ),
        centerTitle: false,
        titleSpacing: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.barColor,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.activeButtonColor,
          ),
          child: const Text('Надіслати', style: AppTextStyles.buttonText),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Column(
          children: const [
            RatingWidget(),
            SizedBox(height: 26),
            Text(
              'Яку оціночку поставите відділам?',
              style: AppTextStyles.subtitle,
            ),
            SizedBox(height: 21),
            CategoryReviewWidget(title: 'Випічка'),
            SizedBox(height: 10),
            CategoryReviewWidget(title: 'Лавка традицій'),
            SizedBox(height: 10),
            FeedbackInputSection(),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
