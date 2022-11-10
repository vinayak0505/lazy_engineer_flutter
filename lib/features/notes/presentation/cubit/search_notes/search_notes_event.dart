part of 'search_notes_bloc.dart';

@freezed
class SearchNotesEvent with _$SearchNotesEvent {
  const factory SearchNotesEvent(String query) = _Started;
}