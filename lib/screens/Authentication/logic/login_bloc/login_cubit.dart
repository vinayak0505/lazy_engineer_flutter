import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());

  // void emailChanged(String value) {
  //   final email = value;
  //   emit(state.copyWith(
  //     email: email,
  //     formStatus: InitialFormStatus(),
  //   ));
  // }

  // void passwordChanged(String value) {
  //   final password = value;
  //   emit(state.copyWith(password: password, formStatus: InitialFormStatus()));
  // }

  // Stream<bool> passwordValidation(String value) async* {
  //   if (value.length < 3) {
  //     emit(state.copyWith(
  //       passwordValidation: false,
  //       formStatus: InitialFormStatus(),
  //     ));
  //     yield false;
  //   } else {
  //     emit(state.copyWith(
  //       passwordValidation: true,
  //       formStatus: InitialFormStatus(),
  //     ));
  //     yield true;
  //   }
  // }

  // Stream<bool> emailValidation(String value) async* {
  //   if (value.length < 3) {
  //     emit(state.copyWith(
  //       emailValidation: false,
  //       formStatus: InitialFormStatus(),
  //     ));
  //     yield false;
  //   } else {
  //     emit(state.copyWith(
  //       emailValidation: true,
  //       formStatus: InitialFormStatus(),
  //     ));
  //     yield true;
  //   }
  // }

  Future<void> logInWithCredentials(String email,String password) async {
    try {
      final name = await Future.delayed(const Duration(milliseconds: 500));
      emit(LoginState.authorized(email));
    } on Exception catch (e) {
      emit(LoginState.unathorized(e.toString()));
    }
  }
}
