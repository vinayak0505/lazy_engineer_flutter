// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paper_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaperResponse _$$_PaperResponseFromJson(Map<String, dynamic> json) =>
    _$_PaperResponse(
      json['title'] as String,
      json['subject'] as String?,
      json['type'] as String?,
      json['semister'] as String?,
      json['year'] as int?,
      json['link'],
    );

Map<String, dynamic> _$$_PaperResponseToJson(_$_PaperResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'type': instance.type,
      'semister': instance.semister,
      'year': instance.year,
      'link': instance.link,
    };
