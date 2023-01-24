part of 'upload_cubit.dart';

@freezed
class UploadState with _$UploadState {
  // file
  const factory UploadState.initial() = UploadInitial;
  const factory UploadState.loading() = UploadLoading;
  const factory UploadState.failure(dynamic e) = UploadFailure;
  const factory UploadState.success() = UploadSuccess;
  // document
  const factory UploadState.documentLoading() = DocumentLoading;
  const factory UploadState.documentFailure(dynamic e) = DocumentFailure;
  const factory UploadState.documentSuccess(PlatformFile data) = DocumentSuccess;
}
