import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_files_request.freezed.dart';
part 'upload_files_request.g.dart';

@freezed
class UploadFilesRequest with _$UploadFilesRequest {
  const factory UploadFilesRequest({
    String? title,
    String? about,
    String? subject,
    String? college,
    String? semester,
    dynamic file,
    dynamic image,
    required List<String> tags,
  }) = _UploadFilesRequest;

  factory UploadFilesRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadFilesRequestFromJson(json);
}

extension UploadFilesRequestFormData on UploadFilesRequest {
  FormData toFormData() {
    return FormData.fromMap({
      'title': title,
      'about': about,
      'subject': subject,
      'college': college,
      'semester': semester,
      'file': file,
      'image': image,
      'tags': tags,
    });
  }
}
