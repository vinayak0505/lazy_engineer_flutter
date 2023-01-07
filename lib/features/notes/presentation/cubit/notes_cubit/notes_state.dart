part of 'notes_cubit.dart';

@freezed
abstract class NotesState with _$NotesState {
  const factory NotesState.loading() = _NotesLoading;
  const factory NotesState.success(List<NoteDetail> data) = _NotesSuccess;
  const factory NotesState.failure(dynamic e) = _NotesFailure;
}
