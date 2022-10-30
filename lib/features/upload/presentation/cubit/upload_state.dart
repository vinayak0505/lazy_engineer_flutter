part of 'upload_cubit.dart';

@freezed
class UploadState with _$UploadState {
  const factory UploadState.initial() = UploadInitial;
  const factory UploadState.documentLoading() = DocumentLoading;
  const factory UploadState.documentSuccess(dynamic data) = DocumentSuccess;
  const factory UploadState.documentFailure(dynamic e) = DocumentFailure;
  const factory UploadState.loading() = UploadLoading;
  const factory UploadState.success(dynamic data) = UploadSuccess;
  const factory UploadState.failure(dynamic e) = UploadFailure;
}
