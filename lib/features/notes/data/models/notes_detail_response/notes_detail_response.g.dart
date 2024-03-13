// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotesDetailResponseImpl _$$NotesDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NotesDetailResponseImpl(
      json['title'] as String,
      json['link'] as String?,
      json['about'] as String?,
      json['semester'] as int?,
      json['subject'] as String?,
      json['unit'] as int?,
      json['chapter'] as String?,
      json['topic'] as String?,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$NotesDetailResponseImplToJson(
        _$NotesDetailResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'about': instance.about,
      'semester': instance.semester,
      'subject': instance.subject,
      'unit': instance.unit,
      'chapter': instance.chapter,
      'topic': instance.topic,
      'tags': instance.tags,
      'rating': instance.rating,
    };
