// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadModelImpl _$$DownloadModelImplFromJson(Map<String, dynamic> json) =>
    _$DownloadModelImpl(
      notes: FileModel.fromJson(json['notes'] as Map<String, dynamic>),
      files: FileModel.fromJson(json['files'] as Map<String, dynamic>),
      books: FileModel.fromJson(json['books'] as Map<String, dynamic>),
      jobs: FileModel.fromJson(json['jobs'] as Map<String, dynamic>),
      papers: FileModel.fromJson(json['papers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DownloadModelImplToJson(_$DownloadModelImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'files': instance.files,
      'books': instance.books,
      'jobs': instance.jobs,
      'papers': instance.papers,
    };
