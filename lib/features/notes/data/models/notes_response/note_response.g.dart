// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteResponse _$$_NoteResponseFromJson(Map<String, dynamic> json) =>
    _$_NoteResponse(
      (json['result'] as List<dynamic>?)
          ?.map((e) => NoteDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$_NoteResponseToJson(_$_NoteResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$_NoteDetail _$$_NoteDetailFromJson(Map<String, dynamic> json) =>
    _$_NoteDetail(
      json['userId'] as String?,
      json['title'] as String?,
      json['about'] as String?,
      json['semester'] as String?,
      json['subject'] as String?,
      json['unit'] as String?,
      json['chapter'] as String?,
      json['topic'] as String?,
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['mediaLink'] as String?,
      json['imageLink'] as String?,
      json['like'] as int?,
      json['dislike'] as int?,
    );

Map<String, dynamic> _$$_NoteDetailToJson(_$_NoteDetail instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'about': instance.about,
      'semester': instance.semester,
      'subject': instance.subject,
      'unit': instance.unit,
      'chapter': instance.chapter,
      'topic': instance.topic,
      'tags': instance.tags,
      'mediaLink': instance.mediaLink,
      'imageLink': instance.imageLink,
      'like': instance.like,
      'dislike': instance.dislike,
    };
