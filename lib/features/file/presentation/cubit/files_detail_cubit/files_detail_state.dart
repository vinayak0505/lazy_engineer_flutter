part of 'files_detail_cubit.dart';

@freezed
abstract class FilesDetailState with _$FilesDetailState {
  const factory FilesDetailState.loading() = _FilesDetailLoading;
  const factory FilesDetailState.success(FilesDetailResponse data, bool? rating) = _FilesDetailSuccess;
  const factory FilesDetailState.failure(dynamic e) = _FilesDetailFailure;
}
