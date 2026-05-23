import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_status.dart';

class RateAppState {
  RateAppState({this.selectedRating = 0, this.status = RateAppStatus.initial});

  final int selectedRating;
  final RateAppStatus status;

  RateAppState copyWith({int? selectedRating, RateAppStatus? status}) {
    return RateAppState(
      selectedRating: selectedRating ?? this.selectedRating,
      status: status ?? this.status,
    );
  }
}
