import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lazy_engineer/assets/images.dart';

part 'profile_modal.freezed.dart';
part 'profile_modal.g.dart';

@freezed
class ProfileModal with _$ProfileModal {
  const factory ProfileModal({
    String? fullName,
    String? email,
    String? designation,
    String? company,
    String? university,
    String? bio,
    String? imageLink,
    String? linkedin,
    String? github,
    String? twitter,
    String? instagram,
    @Default(0) int notesCount,
    @Default(0) int jobsCount,
    @Default(0) int booksCount,
    @Default(0) int papersCount,
    @Default(0) int filesCount,
  }) = _ProfileModal;

  factory ProfileModal.fromJson(Map<String, dynamic> json) =>
      _$ProfileModalFromJson(json);
  factory ProfileModal.dummy() {
    return const ProfileModal(
      fullName: 'Full Name',
      email: 'Email',
      designation: 'Designation',
      company: 'Company',
      university: 'University',
      bio: 'Bio',
      imageLink: "",
      linkedin: 'Linkedin',
      github: 'Github',
      twitter: 'Twitter',
      instagram: 'Instagram',
      notesCount: 0,
      jobsCount: 0,
      booksCount: 0,
      papersCount: 0,
      filesCount: 0,
    );
  }
}
