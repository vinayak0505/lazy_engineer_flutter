part of 'search_files_bloc.dart';

@freezed
class SearchFilesState with _$SearchFilesState {
  const factory SearchFilesState.initial() = _SearchFilesInitial;
  const factory SearchFilesState.loading() = _SearchFilesLoading;
  const factory SearchFilesState.failure(dynamic e) = _SearchFilesFailure;
  const factory SearchFilesState.success(List<FilesResponse> data) = _SearchFilesSuccess;
}
