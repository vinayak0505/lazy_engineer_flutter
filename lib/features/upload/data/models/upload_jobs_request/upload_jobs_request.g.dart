// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_jobs_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadJobsRequest _$$_UploadJobsRequestFromJson(Map<String, dynamic> json) =>
    _$_UploadJobsRequest(
      title: json['title'] as String?,
      profile: json['profile'] as String?,
      company: json['company'] as String?,
      aboutCompany: json['aboutCompany'] as String?,
      location: json['location'] as String?,
      jobType: json['jobType'] as String?,
      experienceLevel: json['experienceLevel'] as String?,
      datePosted: json['datePosted'] as String?,
      skillsNeeded: (json['skillsNeeded'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      expectedSalary: json['expectedSalary'] as int?,
      file: json['file'],
      image: json['image'],
    );

Map<String, dynamic> _$$_UploadJobsRequestToJson(
        _$_UploadJobsRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'profile': instance.profile,
      'company': instance.company,
      'aboutCompany': instance.aboutCompany,
      'location': instance.location,
      'jobType': instance.jobType,
      'experienceLevel': instance.experienceLevel,
      'datePosted': instance.datePosted,
      'skillsNeeded': instance.skillsNeeded,
      'expectedSalary': instance.expectedSalary,
      'file': instance.file,
      'image': instance.image,
    };
