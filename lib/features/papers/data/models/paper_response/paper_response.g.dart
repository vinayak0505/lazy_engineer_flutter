// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paper_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaperResponseImpl _$$PaperResponseImplFromJson(Map<String, dynamic> json) =>
    _$PaperResponseImpl(
      (json['result'] as List<dynamic>?)
          ?.map((e) => PaperDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$PaperResponseImplToJson(_$PaperResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$PaperDetailImpl _$$PaperDetailImplFromJson(Map<String, dynamic> json) =>
    _$PaperDetailImpl(
      json['userId'] as String?,
      json['title'] as String?,
      json['about'] as String?,
      json['semester'] as String?,
      json['subject'] as String?,
      json['unit'] as String?,
      json['chapter'] as String?,
      json['topic'] as String?,
      json['fileLink'] as String?,
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['mediaLink'] as String?,
      json['imageLink'] as String?,
      json['like'] as int?,
      json['dislike'] as int?,
    );

Map<String, dynamic> _$$PaperDetailImplToJson(_$PaperDetailImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'about': instance.about,
      'semester': instance.semester,
      'subject': instance.subject,
      'unit': instance.unit,
      'chapter': instance.chapter,
      'topic': instance.topic,
      'fileLink': instance.fileLink,
      'tags': instance.tags,
      'mediaLink': instance.mediaLink,
      'imageLink': instance.imageLink,
      'like': instance.like,
      'dislike': instance.dislike,
    };
