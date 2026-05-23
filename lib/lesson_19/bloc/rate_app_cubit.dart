import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_state.dart';
import 'package:flutter_learning_jorney/lesson_19/bloc/rate_app_status.dart';

class RateCubit extends Cubit<RateAppState> {
  RateCubit() : super(RateAppState());

  void setRating(int rating) {
    emit(state.copyWith(selectedRating: rating));
  }

  void resetRating() {
    emit(RateAppState());
  }

  Future<void> submitRating() async {
    if (state.selectedRating == 0) return;

    emit(state.copyWith(status: RateAppStatus.loading));

    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(state.copyWith(status: RateAppStatus.success));
    } catch (_) {
      emit(state.copyWith(status: RateAppStatus.error));
    }
  }
}
