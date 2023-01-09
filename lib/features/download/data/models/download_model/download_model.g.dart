// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DownloadModel _$$_DownloadModelFromJson(Map<String, dynamic> json) =>
    _$_DownloadModel(
      notes: FileModel.fromJson(json['notes'] as Map<String, dynamic>),
      files: FileModel.fromJson(json['files'] as Map<String, dynamic>),
      books: FileModel.fromJson(json['books'] as Map<String, dynamic>),
      jobs: FileModel.fromJson(json['jobs'] as Map<String, dynamic>),
      papers: FileModel.fromJson(json['papers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DownloadModelToJson(_$_DownloadModel instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'files': instance.files,
      'books': instance.books,
      'jobs': instance.jobs,
      'papers': instance.papers,
    };
