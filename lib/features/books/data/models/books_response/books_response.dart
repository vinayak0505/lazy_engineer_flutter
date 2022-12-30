import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_response.freezed.dart';
part 'books_response.g.dart';

@freezed
class BooksResponse with _$BooksResponse {
  const factory BooksResponse(
    String title,
    List<String> writers,
    String? description,
    int? pages,
    String? link,
  ) = _BooksResponse;

  factory BooksResponse.fromJson(Map<String, dynamic> json) =>
      _$BooksResponseFromJson(json);
}
