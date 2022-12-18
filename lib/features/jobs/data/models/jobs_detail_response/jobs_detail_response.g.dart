// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobsDetailResponse _$$_JobsDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_JobsDetailResponse(
      json['title'] as String,
      json['jobProfile'] as String,
      json['company'] as String,
      json['link'],
      json['aboutCompany'] as String,
      json['location'] as String,
      json['jobType'] as String?,
      json['experienceLevel'] as String,
      json['datePosted'] as String?,
      json['skillsNeeded'] as String,
      json['exceptedSalary'] as int?,
      json['noOfEmployees'] as int?,
      (json['companyImages'] as List<dynamic>).map((e) => e as String).toList(),
      (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_JobsDetailResponseToJson(
        _$_JobsDetailResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'jobProfile': instance.jobProfile,
      'company': instance.company,
      'link': instance.link,
      'aboutCompany': instance.aboutCompany,
      'location': instance.location,
      'jobType': instance.jobType,
      'experienceLevel': instance.experienceLevel,
      'datePosted': instance.datePosted,
      'skillsNeeded': instance.skillsNeeded,
      'exceptedSalary': instance.exceptedSalary,
      'noOfEmployees': instance.noOfEmployees,
      'companyImages': instance.companyImages,
      'rating': instance.rating,
    };
