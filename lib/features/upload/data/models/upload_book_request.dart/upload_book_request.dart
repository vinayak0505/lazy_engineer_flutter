import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_book_request.freezed.dart';
part 'upload_book_request.g.dart';

@freezed
class UploadBookRequest with _$UploadBookRequest {
  const factory UploadBookRequest({
    required String title,
    required List<String> writer,
    required String subject,
    String? about,
    required int pages,
    int? semister,
    required int bookEdition,
    int? price,
    required List<String> tags,
  }) = _UploadBookRequest;

  factory UploadBookRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadBookRequestFromJson(json);
}