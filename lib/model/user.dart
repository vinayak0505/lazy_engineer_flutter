import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String userId,
    required String userName,
    String? university,
    String? branch,
    int? semester,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.dummy() => const User(
        userId: '1233',
        userName: 'Harman Singh',
        university: 'GTBIT',
        branch: 'CSE',
        semester: 1,
      );
}
