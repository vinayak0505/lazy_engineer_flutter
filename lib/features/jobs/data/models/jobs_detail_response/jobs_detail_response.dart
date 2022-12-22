import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobs_detail_response.freezed.dart';
part 'jobs_detail_response.g.dart';

@freezed
class JobsDetailResponse with _$JobsDetailResponse {
  const factory JobsDetailResponse(
    String title,
    String jobProfile,
    String company,
    dynamic link,
    String aboutCompany,
    String location,
    String? jobType,
    String experienceLevel,
    String? datePosted,
    int? applicants,
    bool? isActivelyRecruiting,
    PayRange? payRange,
    String skillsNeeded,
    int? exceptedSalary,
    int? noOfEmployees,
    int? noOfFollowers,
    List<String> companyImages,
    double rating,
  ) = _JobsDetailResponse;

  factory JobsDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$JobsDetailResponseFromJson(json);
}

@freezed
class PayRange with _$PayRange {
    const factory PayRange({
        int? high,
        int? low,
    }) = _PayRange;

    factory PayRange.fromJson(Map<String, dynamic> json) => _$PayRangeFromJson(json);
}
