// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_files_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadFilesRequestImpl _$$UploadFilesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadFilesRequestImpl(
      title: json['title'] as String?,
      about: json['about'] as String?,
      subject: json['subject'] as String?,
      college: json['college'] as String?,
      semester: json['semester'] as String?,
      file: json['file'],
      image: json['image'],
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UploadFilesRequestImplToJson(
        _$UploadFilesRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'about': instance.about,
      'subject': instance.subject,
      'college': instance.college,
      'semester': instance.semester,
      'file': instance.file,
      'image': instance.image,
      'tags': instance.tags,
    };
