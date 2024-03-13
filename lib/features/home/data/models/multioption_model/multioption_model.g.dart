// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multioption_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultioptionModelImpl _$$MultioptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MultioptionModelImpl(
      title: json['title'] as String,
      body: (json['body'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MultioptionModelImplToJson(
        _$MultioptionModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };
