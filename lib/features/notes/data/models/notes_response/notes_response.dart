import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_response.freezed.dart';
part 'notes_response.g.dart';

@freezed
class NotesResponse with _$NotesResponse {
    const factory NotesResponse(
        List<Result> result,
        int? totalCount,
        int? skip,
        int? limit,
    ) = _NotesResponse;

    factory NotesResponse.fromJson(Map<String, dynamic> json) => _$NotesResponseFromJson(json);
}

@freezed
class Result with _$Result {
    const factory Result(
        List<String> tags,
        String? id,
        String? title,
        String? about,
        String? semister,
    ) = _Result;

    factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
