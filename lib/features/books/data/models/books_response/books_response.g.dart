// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BooksResponse _$$_BooksResponseFromJson(Map<String, dynamic> json) =>
    _$_BooksResponse(
      json['title'] as String,
      (json['writers'] as List<dynamic>).map((e) => e as String).toList(),
      json['description'] as String?,
      json['pages'] as int?,
      json['link'],
    );

Map<String, dynamic> _$$_BooksResponseToJson(_$_BooksResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'writers': instance.writers,
      'description': instance.description,
      'pages': instance.pages,
      'link': instance.link,
    };
