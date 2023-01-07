// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_files_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadFilesRequest _$$_UploadFilesRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UploadFilesRequest(
      title: json['title'] as String?,
      about: json['about'] as String?,
      subject: json['subject'] as String?,
      college: json['college'] as String?,
      semester: json['semester'] as String?,
      file: json['file'],
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UploadFilesRequestToJson(
        _$_UploadFilesRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'about': instance.about,
      'subject': instance.subject,
      'college': instance.college,
      'semester': instance.semester,
      'file': instance.file,
      'tags': instance.tags,
    };
