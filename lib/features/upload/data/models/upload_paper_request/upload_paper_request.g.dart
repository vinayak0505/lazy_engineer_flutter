// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_paper_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadPaperRequest _$$_UploadPaperRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UploadPaperRequest(
      title: json['title'] as String,
      subject: json['subject'] as String?,
      semester: json['semester'] as String?,
      year: json['year'] as int?,
      link: json['link'] as String,
      type: json['type'] as String?,
      solved: json['solved'] as bool?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UploadPaperRequestToJson(
        _$_UploadPaperRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'semester': instance.semester,
      'year': instance.year,
      'link': instance.link,
      'type': instance.type,
      'solved': instance.solved,
      'tags': instance.tags,
    };
