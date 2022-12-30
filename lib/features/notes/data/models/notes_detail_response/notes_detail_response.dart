import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_detail_response.freezed.dart';
part 'notes_detail_response.g.dart';

@freezed
class NotesDetailResponse with _$NotesDetailResponse {
  const factory NotesDetailResponse(
    String title,
    String? link,
    String? about,
    int? semister,
    String? subject,
    int? unit,
    String? chapter,
    String? topic,
    List<String> tags,
    double rating,
  ) = _NotesDetailResponse;

  factory NotesDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$NotesDetailResponseFromJson(json);
}
