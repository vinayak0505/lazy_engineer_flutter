import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_in_model/sign_in_model.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_up_model/sign_up_model.dart';
import 'package:lazy_engineer/features/auth/data/repositories/auth_repository_impl.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

enum Status { login, register }

class AuthCubit extends Cubit<AuthState> {
  AuthRepositoryImpl repository;
  String? token;
  PageController controller = PageController();

  AuthCubit(this.repository) : super(const AuthState.initial()) {
    currentState();
  }

  Status page = Status.login;

  void pageSetter() {
    if (controller.hasClients) {
      controller.animateToPage(
        page == Status.login ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
    if (page == Status.login) {
      page = Status.register;
    } else {
      page = Status.login;
    }
  }

  Future<void> currentState() async {
    await Future.delayed(const Duration(seconds: 3));
    token = await repository.getToken();
    if (token != null) {
      emit(AuthState.authorized(token!));
    } else {
      emit(const AuthState.unathorized(null));
    }
  }

  Future<bool> getToken() async {
    token = await repository.getToken();
    if (token != null) return true;
    return false;
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
    emit(const AuthState.loading());
    await repository.signOut();
    token = null;
    emit(const AuthState.unathorized(null));
  }
}
