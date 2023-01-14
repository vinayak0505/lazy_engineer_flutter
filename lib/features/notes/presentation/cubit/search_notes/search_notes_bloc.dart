import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';

part 'search_notes_event.dart';
part 'search_notes_state.dart';
part 'search_notes_bloc.freezed.dart';

class SearchNotesBloc extends Bloc<SearchNotesEvent, List<NoteDetail>> {
  final List<NoteDetail> notes;
  SearchNotesBloc(this.notes) : super([]) {
    on<SearchNotesEvent>(
      (event, emit) => _search(event.query, emit),
      // transformer: debounce(const Duration(milliseconds: 1000)),
    );
  }

  Future<void> _search(String query, Emitter<List<NoteDetail>> emit) async {
    if (query.isEmpty) {
      emit([]);
      return;
    }
    try {
      final List<NoteDetail> newData = [];
      for (final note in notes) {
        if (note.title == query.trim()) newData.add(note);
      }
      emit(newData);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
