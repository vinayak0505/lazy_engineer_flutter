import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

UserDto userDtoFromJson(String str) => UserDto.fromJson(json.decode(str));

String userDtoToJson(UserDto data) => json.encode(data.toJson());

@freezed
class UserDto with _$UserDto {
  const factory UserDto(
    String status,
    Data data,
  ) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data(
    String token,
    UserDetail userDetail,
  ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail(
    String fullName,
    String email,
    String password,
    String? univercity,
    DateTime timeCreated,
  ) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);
}
