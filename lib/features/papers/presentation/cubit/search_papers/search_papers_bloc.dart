import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/domain/repositories/papers_repository.dart';

part 'search_papers_event.dart';
part 'search_papers_state.dart';
part 'search_papers_bloc.freezed.dart';

class SearchPapersBloc extends Bloc<SearchPapersEvent, SearchPapersState> {
  final PapersRepository _repository;
  SearchPapersBloc(this._repository) : super(const SearchPapersState.initial()) {
    on<SearchPapersEvent>(
      (event, emit) => _search(event.query, emit),
      // transformer: debounce(const Duration(milliseconds: 1000)),
    );
  }

  Future<void> _search(String query, Emitter<SearchPapersState> emit) async {
    if (query.length < 3) {
      emit(const SearchPapersState.initial());
      return;
    }
    emit(const SearchPapersState.loading());
    try {
      final data = await _repository.searchPapers(query);
      if (data != null) {
        emit(SearchPapersState.success(data));
      } else {
        emit(const SearchPapersState.loading());
      }
    } catch (e) {
      emit(SearchPapersState.failure(e));
    }
  }
}
