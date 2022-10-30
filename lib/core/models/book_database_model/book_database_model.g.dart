// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_database_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookDatabaseModel _$$_BookDatabaseModelFromJson(Map<String, dynamic> json) =>
    _$_BookDatabaseModel(
      id: json['id'] as int?,
      title: json['title'] as String,
      subject: json['subject'] as String,
      about: json['about'] as String?,
      pages: json['pages'] as int,
      semister: json['semister'] as int?,
      bookEdition: json['bookEdition'] as int,
      price: json['price'] as int?,
      rating: json['rating'] as int,
    );

Map<String, dynamic> _$$_BookDatabaseModelToJson(
        _$_BookDatabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subject': instance.subject,
      'about': instance.about,
      'pages': instance.pages,
      'semister': instance.semister,
      'bookEdition': instance.bookEdition,
      'price': instance.price,
      'rating': instance.rating,
    };
