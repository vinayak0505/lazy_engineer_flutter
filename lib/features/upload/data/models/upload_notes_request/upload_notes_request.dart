import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_notes_request.freezed.dart';
part 'upload_notes_request.g.dart';

@freezed
class UploadNotesRequest with _$UploadNotesRequest {
  const factory UploadNotesRequest({
    required String title,
    required String? about,
    required String semester,
    dynamic file,
    List<String>? tags,
    String? subject,
    String? unit,
    String? chapter,
    String? topic,
  }) = _UploadNotesRequest;

  factory UploadNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadNotesRequestFromJson(json);
}

extension UploadNotesRequestFormData on UploadNotesRequest {
  FormData toFormData() {
    return FormData.fromMap({
      'title': title,
      'about': about,
      'semester': semester,
      'file': file,
      'subject': subject,
      'unit': unit,
      'chapter': chapter,
      'topic': topic,
      'tags': tags,
    });
  }
}
