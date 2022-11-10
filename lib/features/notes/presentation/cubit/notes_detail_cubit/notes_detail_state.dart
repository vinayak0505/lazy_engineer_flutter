part of 'notes_detail_cubit.dart';

@freezed
abstract class NotesDetailState with _$NotesDetailState {
  const factory NotesDetailState.loading() = _NotesDetailLoading;
  const factory NotesDetailState.success(NotesDetailResponse data, bool? rating) = _NotesDetailSuccess;
  const factory NotesDetailState.failure(dynamic e) = _NotesDetailFailure;
}
