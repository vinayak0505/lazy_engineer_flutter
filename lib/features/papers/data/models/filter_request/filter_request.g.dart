// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterRequest _$$_FilterRequestFromJson(Map<String, dynamic> json) =>
    _$_FilterRequest(
      textField: (json['textField'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      multiOption: (json['multiOption'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      singleOption: json['singleOption'] as String?,
    );

Map<String, dynamic> _$$_FilterRequestToJson(_$_FilterRequest instance) =>
    <String, dynamic>{
      'textField': instance.textField,
      'multiOption': instance.multiOption,
      'singleOption': instance.singleOption,
    };
