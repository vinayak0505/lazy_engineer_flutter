part of 'search_files_bloc.dart';

@freezed
class SearchFilesEvent with _$SearchFilesEvent {
  const factory SearchFilesEvent(String query) = _Started;
}
