// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_book_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadBookRequest _$$_UploadBookRequestFromJson(Map<String, dynamic> json) =>
    _$_UploadBookRequest(
      title: json['title'] as String,
      about: json['about'] as String,
      semester: json['semester'] as String,
      fileLink: json['fileLink'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      writer:
          (json['writer'] as List<dynamic>).map((e) => e as String).toList(),
      pages: json['pages'] as int?,
      bookEdition: json['bookEdition'] as int?,
      price: json['price'] as int?,
      file: json['file'],
    );

Map<String, dynamic> _$$_UploadBookRequestToJson(
        _$_UploadBookRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'about': instance.about,
      'semester': instance.semester,
      'fileLink': instance.fileLink,
      'tags': instance.tags,
      'writer': instance.writer,
      'pages': instance.pages,
      'bookEdition': instance.bookEdition,
      'price': instance.price,
      'file': instance.file,
    };
