import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_detail_response.freezed.dart';
part 'books_detail_response.g.dart';

@freezed
class BooksDetailResponse with _$BooksDetailResponse {
  const factory BooksDetailResponse(
    String title,
    List<String> writers,
    String subject,
    String? about,
    int? pages,
    dynamic link,
    int? semester,
    String? bookEdition,
    int? price,
    double rating,
  ) = _BooksDetailResponse;

  factory BooksDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BooksDetailResponseFromJson(json);
}
