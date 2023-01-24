part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = UserLoading;
  const factory UserState.success(User data) = UserSuccess;
  const factory UserState.failure(dynamic e) = UserFailure;
}
