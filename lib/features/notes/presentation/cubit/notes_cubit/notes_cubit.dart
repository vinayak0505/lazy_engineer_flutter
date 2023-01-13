// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:lazy_engineer/features/notes/data/repositories/notes_repository_impl.dart';

part 'notes_state.dart';
part 'notes_cubit.freezed.dart';

class NotesCubit extends Cubit<NotesState> {
  final NotesRepositoryImpl _repository;
  NotesCubit(this._repository) : super(const NotesState.loading()) {
    getNotes();
  }
  List<NoteDetail>? data;
  Future<void> getNotes() async {
    try {
      data = await _repository.getNotesData();
      if (data != null) {
        emit(NotesState.success(data!));
      } else {
        emit(const NotesState.failure('ERROR 404'));
      }
    } catch (e) {
      emit(NotesState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      //* textfeild
      emit(const NotesState.loading());
      if (filterRequest.textField == null) {
        emit(NotesState.success(data!));
        return;
      }
      final filter = filterRequest.textField!;
      final List<NoteDetail> newData = [];
      for (final note in data!) {
        final bool checkSubject = filter[0] == '' || note.subject == filter[0];
        final bool checkUnit = filter[1] == '' || note.unit == filter[1];
        final bool checkChapter = filter[2] == '' || note.chapter == filter[2];
        final bool checkTopic = filter[3] == '' || note.topic == filter[3];
        final bool check =
            checkSubject && checkUnit && checkChapter && checkTopic;
        if (check) newData.add(note);
      }
      emit(NotesState.success(newData));
    } catch (e) {
      emit(NotesState.failure(e));
    }
  }
}
