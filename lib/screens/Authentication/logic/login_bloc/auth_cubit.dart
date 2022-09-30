import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/model/signup_model/signup_model.dart';
import 'package:lazy_engineer/screens/Authentication/data/repo/auth_repository.dart';

import '../../../../model/signin_model/signin_model.dart';

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
      token = await repository.signIn(user);
      emit(AuthState.authorized(token!));
    } catch (e) {
      emit(AuthState.unathorized(e.toString()));
    }
  }

  Future<void> signUp(SignUpModel user) async {
    print('===cubit before');
    try {
    print('===cubit before');
      token = await repository.signUp(user);
    print('===cubit after');
      emit(AuthState.authorized(token!));
    } catch (e) {
      emit(AuthState.unathorized(e.toString()));
    }
  }

  Future<void> signOut() async {
    try {
      await repository.logout();
      token = null;
      emit(const AuthState.unathorized(null));
    } catch (e) {
      emit(AuthState.authorized(token!));
    }
  }
}
