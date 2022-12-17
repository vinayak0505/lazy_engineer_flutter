part of 'search_papers_bloc.dart';

@freezed
class SearchPapersEvent with _$SearchPapersEvent {
  const factory SearchPapersEvent(String query) = _Started;
}