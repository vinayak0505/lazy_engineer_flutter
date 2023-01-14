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
      semester: json['semester'] as String,
      file: json['file'],
      image: json['image'],
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subject: json['subject'] as String?,
      unit: json['unit'] as String?,
      chapter: json['chapter'] as String?,
      topic: json['topic'] as String?,
    );

Map<String, dynamic> _$$_UploadNotesRequestToJson(
        _$_UploadNotesRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'about': instance.about,
      'semester': instance.semester,
      'file': instance.file,
      'image': instance.image,
      'tags': instance.tags,
      'subject': instance.subject,
      'unit': instance.unit,
      'chapter': instance.chapter,
      'topic': instance.topic,
    };
