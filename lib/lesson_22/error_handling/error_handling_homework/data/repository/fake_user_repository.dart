import 'package:flutter_learning_jorney/lesson_22/error_handling/error_handling_homework/data/repository/entity/user_entity.dart';

class FakeUserRepository {
  Future<UserEntity> getUserProfile(bool shouldFail) async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      if (shouldFail) {
        throw Exception('Server is temporarily unavailable');
      }
      return UserEntity(id: '1', name: 'Test User');
    } on Exception catch (e) {
      throw CustomServerError(e.toString().replaceFirst('Exception: ', ''));
    }
  }
}

class CustomServerError implements Exception {
  const CustomServerError(this.message);

  final String message;

  @override
  String toString() => message;
}
