// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotesResponse _$$_NotesResponseFromJson(Map<String, dynamic> json) =>
    _$_NotesResponse(
      (json['result'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$_NotesResponseToJson(_$_NotesResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      json['id'] as String?,
      json['title'] as String?,
      json['about'] as String?,
      json['semister'] as String?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'tags': instance.tags,
      'id': instance.id,
      'title': instance.title,
      'about': instance.about,
      'semister': instance.semister,
    };
