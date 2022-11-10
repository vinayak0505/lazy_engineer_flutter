part of 'notes_cubit.dart';

@freezed
abstract class NotesState with _$NotesState {
  const factory NotesState.loading() = _NotesLoading;
  const factory NotesState.success(List<NotesResponse> data) = _NotesSuccess;
  const factory NotesState.failure(dynamic e) = _NotesFailure;
}