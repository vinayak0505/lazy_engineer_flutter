import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_seen_response.freezed.dart';
part 'last_seen_response.g.dart';

@freezed
class LastSeenResponse with _$LastSeenResponse {
  const factory LastSeenResponse(
    String title,
    String category,
    String? image,
    String? description,
    String lastSeen,
  ) = _LastSeenResponse;

  factory LastSeenResponse.fromJson(Map<String, dynamic> json) =>
      _$LastSeenResponseFromJson(json);
  factory LastSeenResponse.dummy() => const LastSeenResponse(
        'Computer Graphic',
        'Notes',
        null,
        'You can find handwriten notes from all students. You can find handwriten notes from all students.',
        '12/11/2022',
      );
}
