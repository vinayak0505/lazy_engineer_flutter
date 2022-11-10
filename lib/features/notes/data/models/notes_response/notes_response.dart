import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_response.freezed.dart';
part 'notes_response.g.dart';

@freezed
class NotesResponse with _$NotesResponse {
  const factory NotesResponse(
    String title,
    dynamic link,
    String about,
  ) = _NotesResponse;

  factory NotesResponse.fromJson(Map<String, dynamic> json) =>
      _$NotesResponseFromJson(json);
}
