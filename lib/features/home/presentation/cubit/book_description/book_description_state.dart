part of 'book_description_cubit.dart';

@freezed
class BookDescriptionState with _$BookDescriptionState {
  const factory BookDescriptionState.loading() = BDLoading;
  const factory BookDescriptionState.success(BDModal data, double starRating, List<bool> seeAll) = BDSuccess;
  const factory BookDescriptionState.failure(dynamic e) = BDFailure;
}
