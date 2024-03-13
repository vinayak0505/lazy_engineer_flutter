// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteResponseImpl _$$NoteResponseImplFromJson(Map<String, dynamic> json) =>
    _$NoteResponseImpl(
      (json['result'] as List<dynamic>?)
          ?.map((e) => NoteDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$NoteResponseImplToJson(_$NoteResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$NoteDetailImpl _$$NoteDetailImplFromJson(Map<String, dynamic> json) =>
    _$NoteDetailImpl(
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

Map<String, dynamic> _$$NoteDetailImplToJson(_$NoteDetailImpl instance) =>
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
