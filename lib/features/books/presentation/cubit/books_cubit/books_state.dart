part of 'books_cubit.dart';

@freezed
abstract class BooksState with _$BooksState {
  const factory BooksState.loading() = _BooksLoading;
  const factory BooksState.success(List<BookDetail> data) = _BooksSuccess;
  const factory BooksState.failure(dynamic e) = _BooksFailure;
}
