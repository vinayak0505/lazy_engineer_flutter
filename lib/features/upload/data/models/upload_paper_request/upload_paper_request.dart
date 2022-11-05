import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_paper_request.freezed.dart';
part 'upload_paper_request.g.dart';

@freezed
class UploadPaperRequest with _$UploadPaperRequest {
<<<<<<< HEAD
    const factory UploadPaperRequest({
        required String title,
        String? subject,
        String? semester,
        int? year,
        required String link,
        String? type,
        bool? solved,
        required List<String> tags,
    }) = _UploadPaperRequest;
=======
  const factory UploadPaperRequest({
    required String title,
    String? subject,
    String? semister,
    int? year,
    required dynamic link,
    String? type,
    bool? solved,
    required List<String> tags,
  }) = _UploadPaperRequest;
>>>>>>> 83f110c709cfbcc3aec2d391aacf05656f1aa23b

  factory UploadPaperRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadPaperRequestFromJson(json);
}
