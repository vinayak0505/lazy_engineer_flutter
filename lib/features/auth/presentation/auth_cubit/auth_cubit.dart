import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/sign_in_model/sign_in_model.dart';
import '../../data/models/sign_up_model/sign_up_model.dart';
import '../../data/repositories/auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthRepository repository;
  String? token;

  AuthCubit(this.repository) : super(const AuthState.initial()) {
    getToken();
  }

  void getToken() {
    token = repository.getToken();
    if (token != null) {
      emit(AuthState.authorized(token!));
    } else {
      emit(const AuthState.unathorized(null));
    }
  }

  Future<void> signIn(SignInModel user) async {
    try {
      emit(const AuthState.loading());
      token = await repository.signIn(user);
      if (token != null) {
        emit(AuthState.authorized(token!));
      } else {
        emit(const AuthState.unathorized(null));
      }
    } catch (e) {
      emit(AuthState.unathorized(e.toString()));
    }
  }

  Future<void> signUp(SignUpModel user) async {
    try {
      emit(const AuthState.loading());
      token = await repository.signUp(user);
      if (token != null) {
        emit(AuthState.authorized(token!));
      } else {
        emit(const AuthState.unathorized(null));
      }
    } catch (e) {
      emit(AuthState.unathorized(e.toString()));
    }
  }

  Future<void> signOut() async {
    try {
      emit(const AuthState.loading());
      await repository.logout();
      token = null;
      emit(const AuthState.unathorized(null));
    } catch (e) {
      emit(AuthState.authorized(token!));
    }
  }
}
