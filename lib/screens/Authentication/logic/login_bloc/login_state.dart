
part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.authorized() = LoginAuthorized;

  const factory LoginState.unathorized() = LoginUnAuthorized;
  
  const factory LoginState.loading() = LoginLoading;

  const factory LoginState.initial() = LoginInitial;
}
