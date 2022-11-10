import 'package:freezed_annotation/freezed_annotation.dart';

part 'paper_response.freezed.dart';
part 'paper_response.g.dart';

@freezed
class PaperResponse with _$PaperResponse {
  const factory PaperResponse(
    String title,
    String? subject,
    String? type,
    String? semister,
    int? year,
    dynamic link,
  ) = _PaperResponse;

  factory PaperResponse.fromJson(Map<String, dynamic> json) =>
      _$PaperResponseFromJson(json);
}
