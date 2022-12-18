part of 'search_books_bloc.dart';

@freezed
class SearchBooksState with _$SearchBooksState {
  const factory SearchBooksState.initial() = _SearchBooksInitial;
  const factory SearchBooksState.loading() = _SearchBooksLoading;
  const factory SearchBooksState.failure(dynamic e) = _SearchBooksFailure;
  const factory SearchBooksState.success(List<BooksResponse> data) = _SearchBooksSuccess;
}
