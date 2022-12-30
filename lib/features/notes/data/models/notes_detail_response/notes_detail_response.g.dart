// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotesDetailResponse _$$_NotesDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NotesDetailResponse(
      json['title'] as String,
      json['link'] as String?,
      json['about'] as String?,
      json['semister'] as int?,
      json['subject'] as String?,
      json['unit'] as int?,
      json['chapter'] as String?,
      json['topic'] as String?,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_NotesDetailResponseToJson(
        _$_NotesDetailResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'about': instance.about,
      'semister': instance.semister,
      'subject': instance.subject,
      'unit': instance.unit,
      'chapter': instance.chapter,
      'topic': instance.topic,
      'tags': instance.tags,
      'rating': instance.rating,
    };
