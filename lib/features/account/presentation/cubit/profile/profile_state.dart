part of 'profile_cubit.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.profileLoading() = ProfileLoading;
  const factory ProfileState.profileFailure(dynamic e) = ProfileFailure;
  const factory ProfileState.profileSuccess(ProfileModal data) = ProfileSuccess;
  const factory ProfileState.editLoading() = EditLoading;
  const factory ProfileState.editFailure(dynamic e) = EditFailure;
  const factory ProfileState.editSuccess(ProfileModal data) = EditSuccess;
}
