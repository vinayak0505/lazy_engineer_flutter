// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_database_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookDatabaseModelImpl _$$BookDatabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookDatabaseModelImpl(
      id: json['id'] as int?,
      title: json['title'] as String,
      subject: json['subject'] as String,
      about: json['about'] as String?,
      pages: json['pages'] as int,
      semester: json['semester'] as int?,
      bookEdition: json['bookEdition'] as int,
      price: json['price'] as int?,
      rating: json['rating'] as int,
    );

Map<String, dynamic> _$$BookDatabaseModelImplToJson(
        _$BookDatabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subject': instance.subject,
      'about': instance.about,
      'pages': instance.pages,
      'semester': instance.semester,
      'bookEdition': instance.bookEdition,
      'price': instance.price,
      'rating': instance.rating,
    };
