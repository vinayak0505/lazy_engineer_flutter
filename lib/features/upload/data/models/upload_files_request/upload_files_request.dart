import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_files_request.freezed.dart';
part 'upload_files_request.g.dart';

@freezed
class UploadFilesRequest with _$UploadFilesRequest {
  const factory UploadFilesRequest({
    required String title,
    String? subject,
    String? college,
    String? semister,
    required dynamic link,
    required List<String> tags,
  }) = _UploadFilesRequest;

  factory UploadFilesRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadFilesRequestFromJson(json);
}
