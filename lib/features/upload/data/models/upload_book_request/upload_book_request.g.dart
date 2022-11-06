// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_book_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadBookRequest _$$_UploadBookRequestFromJson(Map<String, dynamic> json) =>
    _$_UploadBookRequest(
      title: json['title'] as String,
      link: json['link'],
      writer:
          (json['writer'] as List<dynamic>).map((e) => e as String).toList(),
      subject: json['subject'] as String,
      about: json['about'] as String?,
      pages: json['pages'] as int,
      semester: json['semester'] as int?,
      bookEdition: json['bookEdition'] as int,
      price: json['price'] as int?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UploadBookRequestToJson(
        _$_UploadBookRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'writer': instance.writer,
      'subject': instance.subject,
      'about': instance.about,
      'pages': instance.pages,
      'semester': instance.semester,
      'bookEdition': instance.bookEdition,
      'price': instance.price,
      'tags': instance.tags,
    };
