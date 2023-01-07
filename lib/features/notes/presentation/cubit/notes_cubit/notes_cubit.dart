import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/notes_response.dart';
import 'package:lazy_engineer/features/notes/domain/repositories/notes_repository.dart';

part 'notes_state.dart';
part 'notes_cubit.freezed.dart';

class NotesCubit extends Cubit<NotesState> {
  final NotesRepository _repository;
  NotesCubit(this._repository) : super(const NotesState.loading()) {
    getNotes();
  }
  Future<void> getNotes() async {
    try {
      final NotesResponse? data = await _repository.getNotesData();
      if (data != null) {
        emit(NotesState.success(data));
      } else {
        emit(const NotesState.loading());
      }
    } catch (e) {
      emit(NotesState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      emit(const NotesState.loading());
      final NotesResponse? data = await _repository.applyFilter(filterRequest);
      if (data != null) {
        emit(NotesState.success(data));
      } else {
        emit(const NotesState.loading());
      }
    } catch (e) {
      emit(NotesState.failure(e));
    }
  }
}
