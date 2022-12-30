import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_notes_request.freezed.dart';
part 'upload_notes_request.g.dart';

@freezed
class UploadNotesRequest with _$UploadNotesRequest {
  const factory UploadNotesRequest({
    required String title,
    String? about,
    int? semester,
    String? subject,
    String? unit,
    String? chapter,
    String? topic,
    required dynamic file,
    required List<String> tags,
  }) = _UploadNotesRequest;

  factory UploadNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadNotesRequestFromJson(json);
}

extension UploadNotesRequestFormData on UploadNotesRequest {
  FormData toFormData() {
    return FormData.fromMap({
      'title': title,
      'about': about,
      'semister': semester,
      'file': file,
      'subject': subject,
      'unit': unit,
      'chapter': chapter,
      'topic': topic,
      'tags': tags,
    });
  }
}
