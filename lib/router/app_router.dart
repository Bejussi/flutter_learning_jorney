import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/home_screen.dart';
import 'package:flutter_learning_jorney/lesson_11/homework_11_screen.dart';
import 'package:flutter_learning_jorney/lesson_12/homework_12_screen.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_%D1%81ubit/cubit/counter_cubit.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_%D1%81ubit/homework_cubit_screen.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_bloc/bloc/counter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_bloc/homework_bloc_screen.dart';
import 'package:flutter_learning_jorney/lesson_18/state_managment_base_screen.dart';
import 'package:flutter_learning_jorney/lesson_19/screens/rate_app_screen.dart';
import 'package:flutter_learning_jorney/lesson_21/explicit_animation_screen.dart';
import 'package:flutter_learning_jorney/lesson_22/core/network/products_api/products_api.dart';
import 'package:flutter_learning_jorney/lesson_22/error_handling/data/data_source/products_data_source.dart';
import 'package:flutter_learning_jorney/lesson_22/error_handling/data/repository/products_repository.dart';
import 'package:flutter_learning_jorney/lesson_22/error_handling/error_handling_homework/data/repository/fake_user_repository.dart';
import 'package:flutter_learning_jorney/lesson_22/error_handling/error_handling_homework/presentation/cubit/user_profile_cubit.dart';
import 'package:flutter_learning_jorney/lesson_22/error_handling/error_handling_homework/presentation/ui/screens/user_profile_homework_screen.dart';
import 'package:flutter_learning_jorney/lesson_22/error_handling/presentation/cubit/products_cubit.dart';
import 'package:flutter_learning_jorney/lesson_22/error_handling/presentation/ui/screens/error_handling_main_screen.dart';
import 'package:flutter_learning_jorney/lesson_22/error_handling/presentation/ui/screens/products_page_example.dart';
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
        GoRoute(
          name: AppRoutePaths.lessonNineteen,
          path: AppRoutePaths.lessonNineteen,
          builder: (context, state) => RateAppScreen(),
        ),
        GoRoute(
          name: AppRoutePaths.explicit,
          path: AppRoutePaths.explicit,
          builder: (context, state) => ExplicitAnimationScreen(),
        ),
        GoRoute(
          name: AppRoutePaths.errorhandling,
          path: AppRoutePaths.errorhandling,
          builder: (context, state) => ErrorHandlingMainScreen(),
          routes: [
            GoRoute(
              name: AppRoutePaths.productsPageExample,
              path: AppRoutePaths.bloc,
              builder: (context, state) => BlocProvider(
                create: (context) => ProductsCubit(
                  ProductsRepositoryImpl(
                    ProductsDataSourceImpl(ProductsApiImpl()),
                  ),
                )..getProducts(),
                child: const ProductsPageExample(),
              ),
            ),
            GoRoute(
              name: AppRoutePaths.userProfileHomework,
              path: AppRoutePaths.userProfileHomework,
              builder: (context, state) => BlocProvider(
                create: (context) =>
                    UserProfileCubit(FakeUserRepository())..loadUserProfile(),
                child: const UserProfileHomeworkScreen(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
