import 'package:freezed_annotation/freezed_annotation.dart';

part 'files_detail_response.freezed.dart';
part 'files_detail_response.g.dart';

@freezed
class FilesDetailResponse with _$FilesDetailResponse {
  const factory FilesDetailResponse(
    String title,
    dynamic link,
    String? about,
    String? college,
    int semester,
    String subject,
    List<String> tags,
    double rating,
  ) = _FilesDetailResponse;

  factory FilesDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$FilesDetailResponseFromJson(json);
}
