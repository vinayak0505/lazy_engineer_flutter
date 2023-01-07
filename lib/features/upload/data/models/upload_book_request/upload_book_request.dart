import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_book_request.freezed.dart';
part 'upload_book_request.g.dart';

@freezed
class UploadBookRequest with _$UploadBookRequest {
  const factory UploadBookRequest({
    required String title,
    required String about,
    required String semester,
    String? fileLink,
    required List<String> tags,
    required List<String> writer,
    int? pages,
    int? bookEdition,
    int? price,
    dynamic file,
  }) = _UploadBookRequest;

  factory UploadBookRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadBookRequestFromJson(json);
}

extension UploadBookRequestFormData on UploadBookRequest {
  FormData toFormData() {
    return FormData.fromMap({
      'title': title,
      'about': about,
      'semester': semester,
      'fileLink': fileLink,
      'tags': tags,
      'writer': writer,
      'pages': pages,
      'bookEdition': bookEdition,
      'price': price,
      'file': file,
    });
  }
}
