// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadNotesRequest _$$_UploadNotesRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UploadNotesRequest(
      title: json['title'] as String,
      about: json['about'] as String?,
      semester: json['semester'] as int?,
      subject: json['subject'] as String?,
      unit: json['unit'] as String?,
      chapter: json['chapter'] as String?,
      topic: json['topic'] as String?,
      file: json['file'],
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UploadNotesRequestToJson(
        _$_UploadNotesRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'about': instance.about,
      'semester': instance.semester,
      'subject': instance.subject,
      'unit': instance.unit,
      'chapter': instance.chapter,
      'topic': instance.topic,
      'file': instance.file,
      'tags': instance.tags,
    };
