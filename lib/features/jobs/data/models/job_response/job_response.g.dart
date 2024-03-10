// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobResponseImpl _$$JobResponseImplFromJson(Map<String, dynamic> json) =>
    _$JobResponseImpl(
      (json['result'] as List<dynamic>?)
          ?.map((e) => JobDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$JobResponseImplToJson(_$JobResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$JobDetailImpl _$$JobDetailImplFromJson(Map<String, dynamic> json) =>
    _$JobDetailImpl(
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
      json['imageLink'] as String?,
      json['like'] as int?,
      json['dislike'] as int?,
    );

Map<String, dynamic> _$$JobDetailImplToJson(_$JobDetailImpl instance) =>
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
      'imageLink': instance.imageLink,
      'like': instance.like,
      'dislike': instance.dislike,
    };
