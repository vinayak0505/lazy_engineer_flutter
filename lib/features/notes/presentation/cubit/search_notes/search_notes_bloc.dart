import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:lazy_engineer/features/notes/domain/repositories/notes_repository.dart';

part 'search_notes_event.dart';
part 'search_notes_state.dart';
part 'search_notes_bloc.freezed.dart';

class SearchNotesBloc extends Bloc<SearchNotesEvent, SearchNotesState> {
  final NotesRepository _repository;
  SearchNotesBloc(this._repository) : super(const SearchNotesState.initial()) {
    on<SearchNotesEvent>(
      (event, emit) => _search(event.query, emit),
      // transformer: debounce(const Duration(milliseconds: 1000)),
    );
  }

  Future<void> _search(String query, Emitter<SearchNotesState> emit) async {
    if (query.length < 3) {
      emit(const SearchNotesState.initial());
      return;
    }
    emit(const SearchNotesState.loading());
    try {
      final data = await _repository.searchNotes(query);
      if (data != null) {
        emit(SearchNotesState.success(data));
      } else {
        emit(const SearchNotesState.loading());
      }
    } catch (e) {
      emit(SearchNotesState.failure(e));
    }
  }
}
