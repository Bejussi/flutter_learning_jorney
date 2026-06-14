import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/feature_card.dart';
import 'package:flutter_learning_jorney/router/app_route_paths.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Lab'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FeatureCard(
              title: 'Widgets',
              onTap: () => context.goNamed(AppRoutePaths.widgets),
            ),
            FeatureCard(
              title: 'HW-18. State managment',
              onTap: () => context.goNamed(AppRoutePaths.lessonEighteen),
            ),
            FeatureCard(
              title: 'HW-19. Rate screen',
              onTap: () => context.goNamed(AppRoutePaths.lessonNineteen),
            ),
            FeatureCard(
              title: 'HW-21. Explicit Animations',
              onTap: () => context.goNamed(AppRoutePaths.explicit),
            ),
          ],
        ),
      ),
    );
  }
}
