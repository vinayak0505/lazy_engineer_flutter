import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_model.g.dart';

@JsonSerializable()
class SignUpModel {
  final String fullName;
  final String email;
  final String? university;
  final String password;
  SignUpModel({required this.fullName, required this.email, this.university, required this.password});

  factory SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpModelFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpModelToJson(this);
}
