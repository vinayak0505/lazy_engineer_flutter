// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_seen_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastSeenResponseImpl _$$LastSeenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LastSeenResponseImpl(
      json['title'] as String,
      json['category'] as String,
      json['image'] as String?,
      json['description'] as String?,
      json['lastSeen'] as String,
    );

Map<String, dynamic> _$$LastSeenResponseImplToJson(
        _$LastSeenResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'category': instance.category,
      'image': instance.image,
      'description': instance.description,
      'lastSeen': instance.lastSeen,
    };
