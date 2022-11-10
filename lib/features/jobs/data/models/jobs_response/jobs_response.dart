import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobs_response.freezed.dart';
part 'jobs_response.g.dart';

@freezed
class JobsResponse with _$JobsResponse {
  const factory JobsResponse(
    String jobTitle,
    String company,
    String location,
    List<String> companyImages,
    String datePosted,
  ) = _JobsResponse;

  factory JobsResponse.fromJson(Map<String, dynamic> json) =>
      _$JobsResponseFromJson(json);
}
