// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileResponse _$$_FileResponseFromJson(Map<String, dynamic> json) =>
    _$_FileResponse(
      (json['result'] as List<dynamic>?)
          ?.map((e) => FileDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$_FileResponseToJson(_$_FileResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$_FileDetail _$$_FileDetailFromJson(Map<String, dynamic> json) =>
    _$_FileDetail(
      json['userId'] as String?,
      json['title'] as String?,
      json['about'] as String?,
      json['subject'] as String?,
      json['college'] as String?,
      json['semester'] as String?,
      json['mediaLink'] as String?,
      json['imageLink'] as String?,
      json['like'] as int?,
      json['dislike'] as int?,
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_FileDetailToJson(_$_FileDetail instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'about': instance.about,
      'subject': instance.subject,
      'college': instance.college,
      'semester': instance.semester,
      'mediaLink': instance.mediaLink,
      'imageLink': instance.imageLink,
      'like': instance.like,
      'dislike': instance.dislike,
      'tags': instance.tags,
    };
