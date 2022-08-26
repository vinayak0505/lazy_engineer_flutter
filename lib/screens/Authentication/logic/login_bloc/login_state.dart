
part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.authorized(String name) = LoginAuthorized;

  const factory LoginState.unathorized(String error) = LoginUnAuthorized;
  
  const factory LoginState.loading() = LoginLoading;

  const factory LoginState.initial() = LoginInitial;
}
