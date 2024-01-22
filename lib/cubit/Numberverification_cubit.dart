// verification_cubit.dart
import 'package:bloc/bloc.dart';

enum VerificationEvent { next, previous }

class VerificationState {
  final int currentStep;
  final int totalSteps;

  VerificationState(this.currentStep, this.totalSteps);
}

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit(int totalSteps) : super(VerificationState(1, totalSteps));

  void nextStep() {
    if (state.currentStep < state.totalSteps) {
      emit(VerificationState(state.currentStep + 1, state.totalSteps));
    } else {
      // Handle completion or navigate to the next screen
    }
  }

  void previousStep() {
    if (state.currentStep > 1) {
      emit(VerificationState(state.currentStep - 1, state.totalSteps));
    }
  }
}
