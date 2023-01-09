import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
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
  ) : super(const NotesDetailState(null));
  
  bool? isDownloaded;
  Future<void> download(String fileLink) async {
    isDownloaded = await _repository.download(fileLink);
  }

  void like() {
    emit(const NotesDetailState(true));
  }

  void dislike() {
    emit(const NotesDetailState(false));
  }

  void ratingNull() {
    emit(const NotesDetailState(null));
  }
}
