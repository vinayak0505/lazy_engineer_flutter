// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterRequestImpl _$$FilterRequestImplFromJson(Map<String, dynamic> json) =>
    _$FilterRequestImpl(
      textField: (json['textField'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      multiOption: (json['multiOption'] as List<dynamic>?)
          ?.map((e) => MultioptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      singleOption: json['singleOption'] as String?,
    );

Map<String, dynamic> _$$FilterRequestImplToJson(_$FilterRequestImpl instance) =>
    <String, dynamic>{
      'textField': instance.textField,
      'multiOption': instance.multiOption,
      'singleOption': instance.singleOption,
    };
