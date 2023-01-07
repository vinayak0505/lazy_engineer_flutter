import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_response.freezed.dart';
part 'note_response.g.dart';

@freezed
class NoteResponse with _$NoteResponse {
  const factory NoteResponse(
    List<NoteDetail>? result,
    int? totalCount,
    int? skip,
    int? limit,
  ) = _NoteResponse;

  factory NoteResponse.fromJson(Map<String, dynamic> json) =>
      _$NoteResponseFromJson(json);
}

@freezed
class NoteDetail with _$NoteDetail {
  const factory NoteDetail(
    String? userId,
    String? title,
    String? about,
    String? semester,
    String? subject,
    String? unit,
    String? chapter,
    String? topic,
    List<String>? tags,
    String? mediaLink,
  ) = _NoteDetail;

  factory NoteDetail.fromJson(Map<String, dynamic> json) =>
      _$NoteDetailFromJson(json);
}
