import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_paper_request.freezed.dart';
part 'upload_paper_request.g.dart';

@freezed
class UploadPaperRequest with _$UploadPaperRequest {
    const factory UploadPaperRequest({
        required String title,
        String? subject,
        String? semister,
        int? year,
        required String link,
        String? type,
        bool? solved,
        required List<String> tags,
    }) = _UploadPaperRequest;

    factory UploadPaperRequest.fromJson(Map<String, dynamic> json) => _$UploadPaperRequestFromJson(json);
}
