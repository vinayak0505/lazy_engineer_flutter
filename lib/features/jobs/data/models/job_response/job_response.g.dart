// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobResponse _$$_JobResponseFromJson(Map<String, dynamic> json) =>
    _$_JobResponse(
      (json['result'] as List<dynamic>?)
          ?.map((e) => JobDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$_JobResponseToJson(_$_JobResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$_JobDetail _$$_JobDetailFromJson(Map<String, dynamic> json) => _$_JobDetail(
      json['userId'] as String?,
      json['title'] as String?,
      json['profile'] as String?,
      json['company'] as String?,
      json['aboutCompany'] as String?,
      json['location'] as String?,
      json['jobType'] as String?,
      json['experienceLevel'] as String?,
      json['datePosted'] as String?,
      (json['skillsNeeded'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['expectedSalary'] as int?,
      json['mediaLink'] as String?,
    );

Map<String, dynamic> _$$_JobDetailToJson(_$_JobDetail instance) =>
    <String, dynamic>{
      'userId': instance.userId,
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
      'mediaLink': instance.mediaLink,
    };
