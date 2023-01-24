import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_paper_request.freezed.dart';
part 'upload_paper_request.g.dart';

@freezed
class UploadPaperRequest with _$UploadPaperRequest {
    const factory UploadPaperRequest({
        required String title,
        required String about,
        required String semester,
        String? subject,
        String? unit,
        String? chapter,
        String? topic,
        String? fileLink,
        required List<String> tags,
        dynamic file,
        dynamic image,
    }) = _UploadPaperRequest;

  factory UploadPaperRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadPaperRequestFromJson(json);
}

extension UploadPaperRequestFormData on UploadPaperRequest {
  FormData toFormData() {
    return FormData.fromMap({
      'title': title,
      'about': about,
      'semester': semester,
      'subject': subject,
      'unit': unit,
      'chapter': chapter,
      'topic': topic,
      'fileLink': fileLink,
      'tags': tags,
      'file': file,
      'image': image,
    });
  }
}
