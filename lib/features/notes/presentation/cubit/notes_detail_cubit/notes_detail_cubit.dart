import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/domain/repositories/notes_repository.dart';

part 'notes_detail_state.dart';
part 'notes_detail_cubit.freezed.dart';

class NotesDetailCubit extends Cubit<NotesDetailState> {
  final NotesRepository _repository;
  final String id;
  NotesDetailCubit(this._repository, this.id)
      : super(const NotesDetailState.loading()) {
    getNotesDetail();
  }
  void getNotesDetail() async {
    emit(NotesDetailState.success(notesDetail, null));
    //   try {
    //     NotesDetailResponse? data = await _repository.getNotesDetailData(id);
    //     if (data != null) {
    //       emit(NotesDetailState.success(data));
    //     } else {
    //       emit(const NotesDetailState.loading());
    //     }
    //   } catch (e) {
    //     emit(NotesDetailState.failure(e));
    //   }
  }

  void like() {
    emit(NotesDetailState.success(notesDetail, true));
  }

  void dislike() {
    emit(NotesDetailState.success(notesDetail, false));
  }

  void ratingNull() {
    emit(NotesDetailState.success(notesDetail, null));
  }
}
