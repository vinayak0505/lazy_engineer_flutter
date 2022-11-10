// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobsResponse _$$_JobsResponseFromJson(Map<String, dynamic> json) =>
    _$_JobsResponse(
      json['jobTitle'] as String,
      json['company'] as String,
      json['location'] as String,
      (json['companyImages'] as List<dynamic>).map((e) => e as String).toList(),
      json['datePosted'] as String,
    );

Map<String, dynamic> _$$_JobsResponseToJson(_$_JobsResponse instance) =>
    <String, dynamic>{
      'jobTitle': instance.jobTitle,
      'company': instance.company,
      'location': instance.location,
      'companyImages': instance.companyImages,
      'datePosted': instance.datePosted,
    };
