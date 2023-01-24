// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_seen_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LastSeenResponse _$$_LastSeenResponseFromJson(Map<String, dynamic> json) =>
    _$_LastSeenResponse(
      json['title'] as String,
      json['category'] as String,
      json['image'] as String?,
      json['description'] as String?,
      json['lastSeen'] as String,
    );

Map<String, dynamic> _$$_LastSeenResponseToJson(_$_LastSeenResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'category': instance.category,
      'image': instance.image,
      'description': instance.description,
      'lastSeen': instance.lastSeen,
    };
