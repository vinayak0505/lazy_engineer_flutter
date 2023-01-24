import 'package:freezed_annotation/freezed_annotation.dart';

part 'paper_detail_response.freezed.dart';
part 'paper_detail_response.g.dart';

@freezed
class PaperDetailResponse with _$PaperDetailResponse {
    const factory PaperDetailResponse(
        String title,
        dynamic link,
        int? semester,
        int? year,
        String subject,
        String? type,
        String? solved,
        List<String> tags,
        double rating,
    ) = _PaperDetailResponse;

    factory PaperDetailResponse.fromJson(Map<String, dynamic> json) => _$PaperDetailResponseFromJson(json);
}
