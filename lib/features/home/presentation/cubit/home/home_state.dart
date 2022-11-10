part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.success(dynamic data) = HomeSuccess;
  const factory HomeState.failure(dynamic e) = HomeFailure;
}
