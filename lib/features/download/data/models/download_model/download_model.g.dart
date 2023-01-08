// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DownloadModel _$$_DownloadModelFromJson(Map<String, dynamic> json) =>
    _$_DownloadModel(
      notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
      files: (json['files'] as List<dynamic>).map((e) => e as String).toList(),
      books: (json['books'] as List<dynamic>).map((e) => e as String).toList(),
      jobs: (json['jobs'] as List<dynamic>).map((e) => e as String).toList(),
      papers:
          (json['papers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_DownloadModelToJson(_$_DownloadModel instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'files': instance.files,
      'books': instance.books,
      'jobs': instance.jobs,
      'papers': instance.papers,
    };
