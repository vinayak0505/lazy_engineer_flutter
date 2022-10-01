// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      json['status'] as String,
      Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['token'] as String,
      UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'token': instance.token,
      'userDetail': instance.userDetail,
    };

_$_UserDetail _$$_UserDetailFromJson(Map<String, dynamic> json) =>
    _$_UserDetail(
      json['fullName'] as String,
      json['email'] as String,
      json['password'] as String,
      json['univercity'] as String?,
      DateTime.parse(json['timeCreated'] as String),
    );

Map<String, dynamic> _$$_UserDetailToJson(_$_UserDetail instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'univercity': instance.univercity,
      'timeCreated': instance.timeCreated.toIso8601String(),
    };
