// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paper_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaperDetailResponse _$$_PaperDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaperDetailResponse(
      json['title'] as String,
      json['link'],
      json['semester'] as int?,
      json['year'] as int?,
      json['subject'] as String,
      json['type'] as String?,
      json['solved'] as String?,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PaperDetailResponseToJson(
        _$_PaperDetailResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'semester': instance.semester,
      'year': instance.year,
      'subject': instance.subject,
      'type': instance.type,
      'solved': instance.solved,
      'tags': instance.tags,
      'rating': instance.rating,
    };
