import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_notes_request.freezed.dart';
part 'upload_notes_request.g.dart';

@freezed
class UploadNotesRequest with _$UploadNotesRequest {
<<<<<<< HEAD
    const factory UploadNotesRequest({
        required String title,
        String? about,
        int? semester,
        String? subject,
        String? unit,
        String? chapter,
        String? topic,
        required String link,
        required List<String> tags,
    }) = _UploadNotesRequest;
=======
  const factory UploadNotesRequest({
    required String title,
    String? about,
    int? semister,
    String? subject,
    String? unit,
    String? chapter,
    String? topic,
    required dynamic link,
    required List<String> tags,
  }) = _UploadNotesRequest;
>>>>>>> 83f110c709cfbcc3aec2d391aacf05656f1aa23b

  factory UploadNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadNotesRequestFromJson(json);
}
