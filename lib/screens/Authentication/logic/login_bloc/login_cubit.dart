import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());

  Future<void> logInWithCredentials(String email,String password) async {
    try {
      final name = await Future.delayed(const Duration(milliseconds: 500));
      emit(LoginState.authorized(email));
    } on Exception catch (e) {
      emit(LoginState.unathorized(e.toString()));
    }
  }
}
