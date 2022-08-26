import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/screens/Authentication/logic/register_bloc/register_state.dart';

import '../form_submission_status.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterState());

  void emailChanged(String value) {
    final email = value;
    emit(state.copyWith(
      email: email,
      formStatus: InitialFormStatus(),
    ));
  }

  void passwordChanged(String value) {
    final password = value;
    emit(state.copyWith(password: password, formStatus: InitialFormStatus()));
  }

  Stream<bool> confirmPasswordValidation(String value) async* {
    if (value == state.password) {
      emit(state.copyWith(
        passwordValidation: false,
        formStatus: InitialFormStatus(),
      ));
      yield false;
    } else {
      emit(state.copyWith(
        passwordValidation: true,
        formStatus: InitialFormStatus(),
      ));
      yield true;
    }
  }

  Stream<bool> passwordValidation(String value) async* {
    if (value.length < 3) {
      emit(state.copyWith(
        passwordValidation: false,
        formStatus: InitialFormStatus(),
      ));
      yield false;
    } else {
      emit(state.copyWith(
        passwordValidation: true,
        formStatus: InitialFormStatus(),
      ));
      yield true;
    }
  }

  Stream<bool> emailValidation(String value) async* {
    if (value.length < 3) {
      emit(state.copyWith(
        emailValidation: false,
        formStatus: InitialFormStatus(),
      ));
      yield false;
    } else {
      emit(state.copyWith(
        emailValidation: true,
        formStatus: InitialFormStatus(),
      ));
      yield true;
    }
  }

  Stream<bool> fullNameValidation(String value) async* {
    if (value.length < 3) {
      emit(state.copyWith(
        fullNameValidation: false,
        formStatus: InitialFormStatus(),
      ));
      yield false;
    } else {
      emit(state.copyWith(
        fullNameValidation: true,
        formStatus: InitialFormStatus(),
      ));
      yield true;
    }
  }

  Future<void> logInWithCredentials() async {
    if (!state.emailValidation || !state.emailValidation) return;
    emit(state.copyWith(formStatus: FormSubmitting()));
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(formStatus: SubmissionSuccess()));
    } on Exception catch (e) {
      emit(state.copyWith(formStatus: SubmissionFailed(error: e.toString())));
    }
  }
}
