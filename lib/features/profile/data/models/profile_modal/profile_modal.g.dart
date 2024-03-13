// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModalImpl _$$ProfileModalImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModalImpl(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      designation: json['designation'] as String?,
      company: json['company'] as String?,
      university: json['university'] as String?,
      bio: json['bio'] as String?,
      imageLink: json['imageLink'] as String?,
      linkedin: json['linkedin'] as String?,
      github: json['github'] as String?,
      twitter: json['twitter'] as String?,
      instagram: json['instagram'] as String?,
      notesCount: json['notesCount'] as int? ?? 0,
      jobsCount: json['jobsCount'] as int? ?? 0,
      booksCount: json['booksCount'] as int? ?? 0,
      papersCount: json['papersCount'] as int? ?? 0,
      filesCount: json['filesCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$ProfileModalImplToJson(_$ProfileModalImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'designation': instance.designation,
      'company': instance.company,
      'university': instance.university,
      'bio': instance.bio,
      'imageLink': instance.imageLink,
      'linkedin': instance.linkedin,
      'github': instance.github,
      'twitter': instance.twitter,
      'instagram': instance.instagram,
      'notesCount': instance.notesCount,
      'jobsCount': instance.jobsCount,
      'booksCount': instance.booksCount,
      'papersCount': instance.papersCount,
      'filesCount': instance.filesCount,
    };
