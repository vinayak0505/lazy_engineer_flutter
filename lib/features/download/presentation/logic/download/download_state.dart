part of 'download_cubit.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState.loading() = DownloadLoading;
  const factory DownloadState.failure(dynamic e) = DownloadFailure;
  const factory DownloadState.success(DownloadModel data) = DownloadSuccess;
}
