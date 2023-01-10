import 'package:freezed_annotation/freezed_annotation.dart';

part 'paper_response.freezed.dart';
part 'paper_response.g.dart';

@freezed
class PaperResponse with _$PaperResponse {
  const factory PaperResponse(
    List<PaperDetail>? result,
    int? totalCount,
    int? skip,
    int? limit,
  ) = _PaperResponse;

  factory PaperResponse.fromJson(Map<String, dynamic> json) =>
      _$PaperResponseFromJson(json);
}

@freezed
class PaperDetail with _$PaperDetail {
  const factory PaperDetail(
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
  ) = _PaperDetail;

  factory PaperDetail.fromJson(Map<String, dynamic> json) => _$PaperDetailFromJson(json);
}
