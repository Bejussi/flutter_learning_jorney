import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/home_screen.dart';
import 'package:flutter_learning_jorney/lesson_11/homework_11_screen.dart';
import 'package:flutter_learning_jorney/lesson_12/homework_12_screen.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_%D1%81ubit/cubit/counter_cubit.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_%D1%81ubit/homework_cubit_screen.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_bloc/bloc/counter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_bloc/homework_bloc_screen.dart';
import 'package:flutter_learning_jorney/lesson_18/state_managment_base_screen.dart';
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
            GoRoute(
              name: AppRoutePaths.lessonThirteen,
              path: AppRoutePaths.lessonThirteen,
              builder: (context, state) => LessonTwelveScreen(),
            ),
          ],
        ),
        GoRoute(
          name: AppRoutePaths.lessonEighteen,
          path: AppRoutePaths.lessonEighteen,
          builder: (context, state) => StateManagmentBaseScreen(),
          routes: [
            GoRoute(
              name: AppRoutePaths.bloc,
              path: AppRoutePaths.bloc,
              builder: (context, state) => BlocProvider(
                create: (context) => CounterBloc(),
                child: HomeworkBlocScreen(),
              ),
            ),
            GoRoute(
              name: AppRoutePaths.cubit,
              path: AppRoutePaths.cubit,
              builder: (context, state) => BlocProvider(
                create: (context) => CounterCubit(),
                child: HomeworkCubitScreen(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
