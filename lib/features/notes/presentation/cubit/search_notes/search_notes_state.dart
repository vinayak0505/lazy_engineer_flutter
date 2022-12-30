part of 'search_notes_bloc.dart';

@freezed
class SearchNotesState with _$SearchNotesState {
  const factory SearchNotesState.initial() = _SearchNotesInitial;
  const factory SearchNotesState.loading() = _SearchNotesLoading;
  const factory SearchNotesState.failure(dynamic e) = _SearchNotesFailure;
  const factory SearchNotesState.success(NotesResponse data) = _SearchNotesSuccess;
}
