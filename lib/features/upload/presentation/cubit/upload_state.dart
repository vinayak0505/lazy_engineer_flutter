part of 'upload_cubit.dart';

@freezed
class UploadState with _$UploadState {
  const factory UploadState.initial() = UploadInitial;
  const factory UploadState.loading() = UploadLoading;
  const factory UploadState.success(dynamic data) = UploadSuccess;
  const factory UploadState.failure(dynamic e) = UploadFailure;
}
