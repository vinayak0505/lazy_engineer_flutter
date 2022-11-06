import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_jobs_request.freezed.dart';
part 'upload_jobs_request.g.dart';

@freezed
class UploadJobsRequest with _$UploadJobsRequest {
    const factory UploadJobsRequest({
        required String title,
        required String profile,
        required String company,
        required String aboutCompany,
        required String location,
        required String jobType,
        required String experienceLevel,
        required String datePosted,
        required List<String> skillsNeeded,
        required int expectedSalary,
        required int numOfEmployees,
        required List<String> companyPhoto,
    }) = _UploadJobsRequest;

    factory UploadJobsRequest.fromJson(Map<String, dynamic> json) => _$UploadJobsRequestFromJson(json);
}
