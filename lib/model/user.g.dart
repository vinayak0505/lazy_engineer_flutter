// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      university: json['university'] as String?,
      branch: json['branch'] as String?,
      semester: json['semester'] as int?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'university': instance.university,
      'branch': instance.branch,
      'semester': instance.semester,
    };
