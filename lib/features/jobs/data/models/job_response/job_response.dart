import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_response.freezed.dart';
part 'job_response.g.dart';

@freezed
class JobResponse with _$JobResponse {
  const factory JobResponse(
    List<JobDetail>? result,
    int? totalCount,
    int? skip,
    int? limit,
  ) = _JobResponse;

  factory JobResponse.fromJson(Map<String, dynamic> json) =>
      _$JobResponseFromJson(json);
}

@freezed
class JobDetail with _$JobDetail {
  const factory JobDetail(
    String? userId,
    String? title,
    String? profile,
    String? company,
    String? aboutCompany,
    String? location,
    String? jobType,
    String? experienceLevel,
    String? datePosted,
    List<String>? skillsNeeded,
    int? expectedSalary,
    String? mediaLink,
    String? imageLink,
    int? like,
    int? dislike,
  ) = _JobDetail;

  factory JobDetail.fromJson(Map<String, dynamic> json) =>
      _$JobDetailFromJson(json);
}
