import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_response.freezed.dart';
part 'file_response.g.dart';

@freezed
class FileResponse with _$FileResponse {
    const factory FileResponse(
        List<FileDetail>? result,
        int? totalCount,
        int? skip,
        int? limit,
    ) = _FileResponse;

    factory FileResponse.fromJson(Map<String, dynamic> json) => _$FileResponseFromJson(json);
}

@freezed
class FileDetail with _$FileDetail {
    const factory FileDetail(
        String? userId,
        String? title,
        String? about,
        String? subject,
        String? college,
        String? semester,
        String? mediaLink,
        String? imageLink,
        int? like,
        int? dislike,
        List<String>? tags,
    ) = _FileDetail;

    factory FileDetail.fromJson(Map<String, dynamic> json) => _$FileDetailFromJson(json);
}
