import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/notes/data/repositories/notes_repository_impl.dart';

part 'notes_detail_state.dart';
part 'notes_detail_cubit.freezed.dart';

class NotesDetailCubit extends Cubit<NotesDetailState> {
  final NotesRepositoryImpl _repository;
  final String id;
  final String fileLink;
  NotesDetailCubit(
    this._repository,
    this.id,
    this.fileLink,
  ) : super(const NotesDetailState());

  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await _repository.download(fileLink);
      emit(const NotesDetailState(isDownloaded: true));
    } catch (e) {
      emit(const NotesDetailState(isDownloaded: false));
    }
  }

  void like() {
    if (rating == true) {
      rating = null;
      emit(const NotesDetailState());
    } else {
      rating = true;
      emit(const NotesDetailState(rating: true));
    }
  }

  void dislike() {
    if (rating == false) {
      rating = null;
      emit(const NotesDetailState());
    } else {
      rating = false;
      emit(const NotesDetailState(rating: false));
    }
  }
}
