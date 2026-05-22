import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/router/app_route_paths.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_learning_jorney/lesson_11/homework_11_screen.dart';
import 'package:flutter_learning_jorney/lesson_12/homework_12_screen.dart';
import 'package:flutter_learning_jorney/lesson_13/lesson_13_screen.dart';
import 'package:flutter_learning_jorney/theme/app_colors.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets', style: AppTextStyles.title),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                AppColors.appBarGradientColorRight,
                AppColors.appBarGradientColorLeft,
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavigationCard(
              title: 'Homework: Widgets Part 1',
              description:
                  'Container, SizedBox, Padding, Align, Center, Text, Row, '
                  'Column, Expanded, Buttons, Scroll',
              onTap: () => context.goNamed(AppRoutePaths.lessonEleven),
            ),

            NavigationCard(
              title: 'Homework: Widgets Part 2',
              description:
                  'Custom Widgets, Stateless vs Stateful Widgets, '
                  'Gesture Detector & InkWel, '
                  'TextFields & TextFormFields',
              onTap: () => context.goNamed(AppRoutePaths.lessonTwelve),
            ),

            NavigationCard(
              title: 'Homework: Widgets Part 3',
              description: 'Interaction of widgets and layout ',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const WidgetConstrainsTrainingScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationCard extends StatelessWidget {
  const NavigationCard({
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shadowColor: AppColors.appBarGradientColorLeft,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.subtitle),
              const SizedBox(height: 12),
              Text(description, style: AppTextStyles.inputFieldLabel),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.appBarGradientColorRight,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
