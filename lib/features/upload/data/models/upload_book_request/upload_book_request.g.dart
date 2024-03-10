// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_book_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadBookRequestImpl _$$UploadBookRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadBookRequestImpl(
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
      image: json['image'],
    );

Map<String, dynamic> _$$UploadBookRequestImplToJson(
        _$UploadBookRequestImpl instance) =>
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
      'image': instance.image,
    };
