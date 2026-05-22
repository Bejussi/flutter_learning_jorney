import 'package:flutter_learning_jorney/home_screen.dart';
import 'package:flutter_learning_jorney/lesson_11/homework_11_screen.dart';
import 'package:flutter_learning_jorney/lesson_12/homework_12_screen.dart';
import 'package:flutter_learning_jorney/router/app_route_paths.dart';
import 'package:flutter_learning_jorney/widgets_main_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          name: AppRoutePaths.widgets,
          path: AppRoutePaths.widgets,
          builder: (context, state) => WidgetsScreen(),
          routes: [
            GoRoute(
              name: AppRoutePaths.lessonEleven,
              path: AppRoutePaths.lessonEleven,
              builder: (context, state) => WidgetsLessonElevenScreen(),
            ),
            GoRoute(
              name: AppRoutePaths.lessonTwelve,
              path: AppRoutePaths.lessonTwelve,
              builder: (context, state) => LessonTwelveScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
