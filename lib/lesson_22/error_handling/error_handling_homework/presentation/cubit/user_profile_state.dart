import 'package:flutter_learning_jorney/lesson_22/error_handling/error_handling_homework/data/repository/entity/user_entity.dart';

sealed class UserProfileState {}

final class UserProfileLoading implements UserProfileState {}

final class UserProfileLoaded implements UserProfileState {
  UserProfileLoaded(this.user);

  final UserEntity user;
}

final class UserProfileServerError implements UserProfileState {
  UserProfileServerError(this.message);
  final String message;
}

final class UserProfileUnknownError implements UserProfileState {
  UserProfileUnknownError(this.message);

  final String message;
}
