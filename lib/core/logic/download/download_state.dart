part of 'download_cubit.dart';

@freezed
abstract class DownloadState with _$DownloadState {
  const factory DownloadState.initial() = _DownloadInitial;
  const factory DownloadState.loading() = _DownloadLoading;
  const factory DownloadState.success() = _DownloadSuccess;
  const factory DownloadState.failure(dynamic e) = _DownloadFailure;
}