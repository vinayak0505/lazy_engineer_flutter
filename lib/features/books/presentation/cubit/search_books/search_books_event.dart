part of 'search_books_bloc.dart';

@freezed
class SearchBooksEvent with _$SearchBooksEvent {
  const factory SearchBooksEvent(String query) = _Started;
}
