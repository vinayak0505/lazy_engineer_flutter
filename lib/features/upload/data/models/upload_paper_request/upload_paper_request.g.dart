// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_paper_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadPaperRequest _$$_UploadPaperRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UploadPaperRequest(
      title: json['title'] as String,
      about: json['about'] as String,
      semester: json['semester'] as String,
      subject: json['subject'] as String,
      year: json['year'] as String,
      university: json['university'] as String?,
      type: json['type'] as String?,
      fileLink: json['fileLink'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      file: json['file'],
    );

Map<String, dynamic> _$$_UploadPaperRequestToJson(
        _$_UploadPaperRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'about': instance.about,
      'semester': instance.semester,
      'subject': instance.subject,
      'year': instance.year,
      'university': instance.university,
      'type': instance.type,
      'fileLink': instance.fileLink,
      'tags': instance.tags,
      'file': instance.file,
    };
