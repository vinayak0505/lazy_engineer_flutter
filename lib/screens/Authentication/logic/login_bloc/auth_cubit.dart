import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/screens/Authentication/data/repo/auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthRepository repository;
  String? token;

  AuthCubit(this.repository) : super(const AuthState.initial()) {
    getToken();
  }

  Future<void> getToken() async {
    emit(const AuthState.authorized('token'));
    token = await repository.getToken();
    if (token != null) {
      emit(AuthState.authorized(token!));
    } else {
      emit(const AuthState.unathorized(null));
    }
  }

  Future<void> logIn(String email, String password) async {
    try {
      token = await repository.logIn(email, password);
      emit(AuthState.authorized(token!));
    } catch (e) {
      emit(AuthState.unathorized(e.toString()));
    }
  }

  Future<void> signUp(String fullName, String email, String password) async {
    try {
      token = await repository.signIn(fullName, email, password);
      emit(AuthState.authorized(token!));
    } catch (e) {
      emit(AuthState.unathorized(e.toString()));
    }
  }

  Future<void> logout() async {
    try {
      await repository.logout();
      token = null;
      emit(const AuthState.unathorized(null));
    } catch (e) {
      emit(AuthState.authorized(token!));
    }
  }
}
