// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookResponseImpl _$$BookResponseImplFromJson(Map<String, dynamic> json) =>
    _$BookResponseImpl(
      (json['result'] as List<dynamic>?)
          ?.map((e) => BookDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
      json['skip'] as int?,
      json['limit'] as int?,
    );

Map<String, dynamic> _$$BookResponseImplToJson(_$BookResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'totalCount': instance.totalCount,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$BookDetailImpl _$$BookDetailImplFromJson(Map<String, dynamic> json) =>
    _$BookDetailImpl(
      json['userId'] as String?,
      json['title'] as String?,
      json['about'] as String?,
      json['semester'] as String?,
      json['fileLink'] as String?,
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['writer'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['pages'] as int?,
      json['bookEdition'] as int?,
      json['price'] as int?,
      json['mediaLink'] as String?,
      json['imageLink'] as String?,
      json['like'] as int?,
      json['dislike'] as int?,
    );

Map<String, dynamic> _$$BookDetailImplToJson(_$BookDetailImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'about': instance.about,
      'semester': instance.semester,
      'fileLink': instance.fileLink,
      'tags': instance.tags,
      'writer': instance.writer,
      'pages': instance.pages,
      'bookEdition': instance.bookEdition,
      'price': instance.price,
      'mediaLink': instance.mediaLink,
      'imageLink': instance.imageLink,
      'like': instance.like,
      'dislike': instance.dislike,
    };
