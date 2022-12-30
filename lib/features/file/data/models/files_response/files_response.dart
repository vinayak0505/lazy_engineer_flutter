import 'package:freezed_annotation/freezed_annotation.dart';

part 'files_response.freezed.dart';
part 'files_response.g.dart';

@freezed
class FilesResponse with _$FilesResponse {
  const factory FilesResponse(
    String title,
    String? subject,
    String? college,
    String? semester,
    String? link,
  ) = _FilesResponse;

  factory FilesResponse.fromJson(Map<String, dynamic> json) =>
      _$FilesResponseFromJson(json);
}
