// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paper_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaperResponse _$$_PaperResponseFromJson(Map<String, dynamic> json) =>
    _$_PaperResponse(
      (json['result'] as List<dynamic>?)
          ?.map((e) => PaperDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$_PaperResponseToJson(_$_PaperResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$_PaperDetail _$$_PaperDetailFromJson(Map<String, dynamic> json) =>
    _$_PaperDetail(
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
    );

Map<String, dynamic> _$$_PaperDetailToJson(_$_PaperDetail instance) =>
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
    };
