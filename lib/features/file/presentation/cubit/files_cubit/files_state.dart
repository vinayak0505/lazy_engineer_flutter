part of 'files_cubit.dart';

@freezed
abstract class FilesState with _$FilesState {
  const factory FilesState.loading() = _FilesLoading;
  const factory FilesState.success(List<FilesResponse> data) = _FilesSuccess;
  const factory FilesState.failure(dynamic e) = _FilesFailure;
}
