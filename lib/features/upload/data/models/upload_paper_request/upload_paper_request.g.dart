// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_paper_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadPaperRequestImpl _$$UploadPaperRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadPaperRequestImpl(
      title: json['title'] as String,
      about: json['about'] as String,
      semester: json['semester'] as String,
      subject: json['subject'] as String?,
      unit: json['unit'] as String?,
      chapter: json['chapter'] as String?,
      topic: json['topic'] as String?,
      fileLink: json['fileLink'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      file: json['file'],
      image: json['image'],
    );

Map<String, dynamic> _$$UploadPaperRequestImplToJson(
        _$UploadPaperRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'about': instance.about,
      'semester': instance.semester,
      'subject': instance.subject,
      'unit': instance.unit,
      'chapter': instance.chapter,
      'topic': instance.topic,
      'fileLink': instance.fileLink,
      'tags': instance.tags,
      'file': instance.file,
      'image': instance.image,
    };
