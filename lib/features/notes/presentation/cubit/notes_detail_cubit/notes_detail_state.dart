part of 'notes_detail_cubit.dart';

@freezed
abstract class NotesDetailState with _$NotesDetailState {
  const factory NotesDetailState(
    bool? rating,
    bool? isDownloaded,
  ) = NotesDetail;
}
