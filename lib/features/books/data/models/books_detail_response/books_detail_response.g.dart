// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BooksDetailResponse _$$_BooksDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BooksDetailResponse(
      json['title'] as String,
      (json['writers'] as List<dynamic>).map((e) => e as String).toList(),
      json['subject'] as String,
      json['about'] as String?,
      json['pages'] as int?,
      json['link'],
      json['semester'] as int?,
      json['bookEdition'] as String?,
      json['price'] as int?,
      (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BooksDetailResponseToJson(
        _$_BooksDetailResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'writers': instance.writers,
      'subject': instance.subject,
      'about': instance.about,
      'pages': instance.pages,
      'link': instance.link,
      'semester': instance.semester,
      'bookEdition': instance.bookEdition,
      'price': instance.price,
      'rating': instance.rating,
    };
