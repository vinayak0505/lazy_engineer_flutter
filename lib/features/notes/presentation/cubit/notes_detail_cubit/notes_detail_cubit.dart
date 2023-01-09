import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/notes/domain/repositories/notes_repository.dart';

part 'notes_detail_state.dart';
part 'notes_detail_cubit.freezed.dart';

class NotesDetailCubit extends Cubit<NotesDetailState> {
  final NotesRepository _repository;
  final String id;
  final String fileLink;
  NotesDetailCubit(
    this._repository,
    this.id,
    this.fileLink,
  ) : super(const NotesDetailState(null, null));

  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await _repository.download(fileLink);
      emit(const NotesDetailState(null, true));
    } catch (e) {
      emit(const NotesDetailState(null, false));
    }
  }

  void like() {
    if (rating == true) {
      rating = null;
      emit(const NotesDetailState(null, null));
    } else {
      rating = true;
      emit(const NotesDetailState(true, null));
    }
  }

  void dislike() {
    if (rating == false) {
      rating = null;
      emit(const NotesDetailState(null, null));
    } else {
      rating = false;
      emit(const NotesDetailState(false, null));
    }
  }
}
