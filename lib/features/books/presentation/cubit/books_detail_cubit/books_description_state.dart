part of 'books_description_cubit.dart';

@freezed
class BooksDescriptionState with _$BooksDescriptionState {
  const factory BooksDescriptionState.loading() = BDLoading;
  const factory BooksDescriptionState.success(BDModal data, double starRating, List<bool> seeAll) = BDSuccess;
  const factory BooksDescriptionState.failure(dynamic e) = BDFailure;
}
