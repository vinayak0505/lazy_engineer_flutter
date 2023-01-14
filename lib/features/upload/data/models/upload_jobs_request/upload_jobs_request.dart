import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_jobs_request.freezed.dart';
part 'upload_jobs_request.g.dart';

@freezed
class UploadJobsRequest with _$UploadJobsRequest {
    const factory UploadJobsRequest({
        String? title,
        String? profile,
        String? company,
        String? aboutCompany,
        String? location,
        String? jobType,
        String? experienceLevel,
        String? datePosted,
        required List<String> skillsNeeded,
        int? expectedSalary,
        dynamic file,
        dynamic image,
    }) = _UploadJobsRequest;

    factory UploadJobsRequest.fromJson(Map<String, dynamic> json) => _$UploadJobsRequestFromJson(json);
}

extension UploadJobsRequestFormData on UploadJobsRequest {
  FormData toFormData() {
    return FormData.fromMap({
      'title': title,
      'profile': profile,
      'company': company,
      'aboutCompany': aboutCompany,
      'location': location,
      'jobType': jobType,
      'experienceLevel': experienceLevel,
      'datePosted': datePosted,
      'skillsNeeded': skillsNeeded,
      'expectedSalary': expectedSalary,
      'file': file,
      'image': image,
    });
  }
}
