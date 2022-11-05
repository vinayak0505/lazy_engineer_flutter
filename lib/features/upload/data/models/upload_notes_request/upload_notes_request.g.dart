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
      semister: json['semister'] as int?,
      subject: json['subject'] as String?,
      unit: json['unit'] as String?,
      chapter: json['chapter'] as String?,
      topic: json['topic'] as String?,
      link: json['link'],
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UploadNotesRequestToJson(
        _$_UploadNotesRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'about': instance.about,
      'semister': instance.semister,
      'subject': instance.subject,
      'unit': instance.unit,
      'chapter': instance.chapter,
      'topic': instance.topic,
      'link': instance.link,
      'tags': instance.tags,
    };
