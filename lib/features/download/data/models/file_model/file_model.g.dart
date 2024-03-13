// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileModelImpl _$$FileModelImplFromJson(Map<String, dynamic> json) =>
    _$FileModelImpl(
      key: (json['key'] as List<dynamic>).map((e) => e as String).toList(),
      value: (json['value'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FileModelImplToJson(_$FileModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
