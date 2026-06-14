import 'package:flutter/material.dart';
import 'package:flutter_learning_jorney/router/app_route_paths.dart';
import 'package:flutter_learning_jorney/widgets_main_screen.dart';
import 'package:go_router/go_router.dart';

class ErrorHandlingMainScreen extends StatelessWidget {
  const ErrorHandlingMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Handling'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavigationCard(
              title: 'Products Page Example',
              description:
                  'Example of error handling in a products page with '
                  'loading states, error states, and success states',
              onTap: () => context.goNamed(AppRoutePaths.productsPageExample),
            ),
            NavigationCard(
              title: 'User Profile Homework',
              description:
                  'Example of error handling in a user profile page with '
                  'loading states, error states, and success states',
              onTap: () => context.goNamed(AppRoutePaths.userProfileHomework),
            ),
          ],
        ),
      ),
    );
  }
}
