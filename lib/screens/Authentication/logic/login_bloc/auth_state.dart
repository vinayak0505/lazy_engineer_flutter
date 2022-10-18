part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authorized(String token) = Authorized;

  const factory AuthState.unathorized(String? error) = UnAuthorized;

  const factory AuthState.initial() = AuthInitial;
}
