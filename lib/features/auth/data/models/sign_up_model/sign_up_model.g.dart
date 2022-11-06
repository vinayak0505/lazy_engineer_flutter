// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) => SignUpModel(
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      university: json['university'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignUpModelToJson(SignUpModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'university': instance.university,
      'password': instance.password,
    };
