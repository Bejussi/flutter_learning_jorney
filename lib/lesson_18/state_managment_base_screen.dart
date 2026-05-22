import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/feature_card.dart';
import 'package:flutter_learning_jorney/router/app_route_paths.dart';
import 'package:go_router/go_router.dart';

class StateManagmentBaseScreen extends StatelessWidget {
  const StateManagmentBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Managment'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FeatureCard(
              title: 'Cubit Example',
              onTap: () => context.goNamed(AppRoutePaths.cubit),
            ),
            FeatureCard(
              title: 'Bloc Example',
              onTap: () => context.goNamed(AppRoutePaths.bloc),
            ),
          ],
        ),
      ),
    );
  }
}
