// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModal _$$_ProfileModalFromJson(Map<String, dynamic> json) =>
    _$_ProfileModal(
      userName: json['userName'] as String?,
      userPic: json['userPic'] as String?,
      userClass: json['userClass'] as String?,
      branch: json['branch'] as String?,
      semester: json['semester'] as int?,
      universityName: json['universityName'] as String?,
      universityAddress: json['universityAddress'] as String?,
      userDescription: json['userDescription'] as String?,
      userUploads: json['userUploads'] == null
          ? null
          : UserUploads.fromJson(json['userUploads'] as Map<String, dynamic>),
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      yearOfAdmission: json['yearOfAdmission'] as int?,
      experienceLevel: (json['experienceLevel'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      jobType:
          (json['jobType'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userAddress: json['userAddress'] as String?,
    );

Map<String, dynamic> _$$_ProfileModalToJson(_$_ProfileModal instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userPic': instance.userPic,
      'userClass': instance.userClass,
      'branch': instance.branch,
      'semester': instance.semester,
      'universityName': instance.universityName,
      'universityAddress': instance.universityAddress,
      'userDescription': instance.userDescription,
      'userUploads': instance.userUploads,
      'contact': instance.contact,
      'yearOfAdmission': instance.yearOfAdmission,
      'experienceLevel': instance.experienceLevel,
      'jobType': instance.jobType,
      'userAddress': instance.userAddress,
    };

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      email: json['email'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'email': instance.email,
      'mobileNumber': instance.mobileNumber,
    };

_$_UserDescription _$$_UserDescriptionFromJson(Map<String, dynamic> json) =>
    _$_UserDescription(
      notes: json['notes'] as int?,
      file: json['file'] as int?,
      paper: json['paper'] as int?,
      book: json['book'] as int?,
      jobRequest: json['jobRequest'] as int?,
    );

Map<String, dynamic> _$$_UserDescriptionToJson(_$_UserDescription instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'file': instance.file,
      'paper': instance.paper,
      'book': instance.book,
      'jobRequest': instance.jobRequest,
    };
