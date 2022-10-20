import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/sign_in_model/sign_in_model.dart';
import '../../data/models/sign_up_model/sign_up_model.dart';
import '../../data/repositories/auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

enum Status { login, register }

class AuthCubit extends Cubit<AuthState> {
  AuthRepository repository;
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

  void currentState() async {
    await Future.delayed(const Duration(seconds: 3));
    token = repository.getToken();
    if (token != null) {
      emit(AuthState.authorized(token!));
    } else {
      emit(const AuthState.unathorized(null));
    }
  }

  bool getToken() {
    return repository.getToken() != null ? true : false;
  }

  Future<void> signIn(SignInModel user) async {
    try {
      emit(const AuthState.loading());
      token = await repository.signIn(user);
      print(token);
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
