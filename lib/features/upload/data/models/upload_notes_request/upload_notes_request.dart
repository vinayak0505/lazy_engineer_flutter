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
        required dynamic link,
        required List<String> tags,
    }) = _UploadNotesRequest;

  factory UploadNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadNotesRequestFromJson(json);
}
