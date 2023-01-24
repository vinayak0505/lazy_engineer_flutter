import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/features/books/domain/repositories/books_repository.dart';

part 'search_books_event.dart';
part 'search_books_state.dart';
part 'search_books_bloc.freezed.dart';

class SearchBooksBloc extends Bloc<SearchBooksEvent, SearchBooksState> {
  final BooksRepository _repository;
  SearchBooksBloc(this._repository) : super(const SearchBooksState.initial()) {
    on<SearchBooksEvent>(
      (event, emit) => _search(event.query, emit),
      // transformer: debounce(const Duration(milliseconds: 1000)),
    );
  }

  Future<void> _search(String query, Emitter<SearchBooksState> emit) async {
    if (query.length < 3) {
      emit(const SearchBooksState.initial());
      return;
    }
    emit(const SearchBooksState.loading());
    try {
      final data = await _repository.searchBooks(query);
      if (data != null) {
        emit(SearchBooksState.success(data));
      } else {
        emit(const SearchBooksState.loading());
      }
    } catch (e) {
      emit(SearchBooksState.failure(e));
    }
  }
}
