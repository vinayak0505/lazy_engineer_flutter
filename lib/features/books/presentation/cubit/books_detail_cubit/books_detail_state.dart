part of 'books_detail_cubit.dart';

@freezed
class BooksDetailState with _$BooksDetailState {
  const factory BooksDetailState({
    bool? rating,
    bool? isDownloaded,
  }) = BooksDetail;
}
