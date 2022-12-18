part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.success(bool isNotEdit, ProfileModal data) = ProfileSuccess;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.failure(dynamic e) = ProfileFailure;
}