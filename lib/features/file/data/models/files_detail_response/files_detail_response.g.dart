// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilesDetailResponseImpl _$$FilesDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FilesDetailResponseImpl(
      json['title'] as String,
      json['link'],
      json['about'] as String?,
      json['college'] as String?,
      json['semester'] as int,
      json['subject'] as String,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$FilesDetailResponseImplToJson(
        _$FilesDetailResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'about': instance.about,
      'college': instance.college,
      'semester': instance.semester,
      'subject': instance.subject,
      'tags': instance.tags,
      'rating': instance.rating,
    };
