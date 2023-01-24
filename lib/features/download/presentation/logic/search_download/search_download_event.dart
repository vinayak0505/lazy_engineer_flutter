part of 'search_download_bloc.dart';

@freezed
class SearchDownloadEvent with _$SearchDownloadEvent {
  const factory SearchDownloadEvent(String query) = _Started;
}
