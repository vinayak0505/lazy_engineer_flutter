// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multioption_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultioptionModel _$$_MultioptionModelFromJson(Map<String, dynamic> json) =>
    _$_MultioptionModel(
      title: json['title'] as String,
      body: (json['body'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MultioptionModelToJson(_$_MultioptionModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };
