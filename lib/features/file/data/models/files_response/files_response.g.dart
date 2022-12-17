// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilesResponse _$$_FilesResponseFromJson(Map<String, dynamic> json) =>
    _$_FilesResponse(
      json['title'] as String,
      json['subject'] as String?,
      json['college'] as String?,
      json['semester'] as String?,
      json['link'],
    );

Map<String, dynamic> _$$_FilesResponseToJson(_$_FilesResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'college': instance.college,
      'semester': instance.semester,
      'link': instance.link,
    };
