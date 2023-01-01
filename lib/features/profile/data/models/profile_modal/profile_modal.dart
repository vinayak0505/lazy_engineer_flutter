import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../assets/images.dart';

part 'profile_modal.freezed.dart';
part 'profile_modal.g.dart';

@freezed
class ProfileModal with _$ProfileModal {
  const factory ProfileModal({
    String? userName,
    String? userPic,
    String? userClass,
    String? branch,
    int? semester,
    String? universityName,
    String? universityAddress,
    String? userDescription,
    UserUploads? userUploads,
    Contact? contact,
    int? yearOfAdmission,
    List<String>? experienceLevel,
    List<String>? jobType,
    String? userAddress,
  }) = _ProfileModal;

  factory ProfileModal.fromJson(Map<String, dynamic> json) =>
      _$ProfileModalFromJson(json);
  factory ProfileModal.dummy() {
    return const ProfileModal(
      userName: 'Harman Singh Jaggi',
      userPic: AppImages.anonymousProfile,
      userClass: 'Aeronautical Engineering',
      branch: 'CSE-3',
      semester: 3,
      universityName: 'GTBIT',
      universityAddress: 'Delhi, India',
      userDescription:
          'user description ================= =========== ============== ============ ======== =======',
      userUploads: UserUploads(
        notes: 1,
        file: 2,
        paper: 1,
        book: 1,
        jobRequest: 1,
      ),
      contact: Contact(
        email: 'harmanjaggs@gmail.com',
        mobileNumber: '9873424386',
      ),
      yearOfAdmission: 2020,
      experienceLevel: ['internship'],
      jobType: ['internship'],
      userAddress: 'B-165, Phase 1, Ashok Vihar, Delhi - 110052',
    );
  }
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    String? email,
    String? mobileNumber,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

@freezed
class UserUploads with _$UserUploads {
  const factory UserUploads({
    int? notes,
    int? file,
    int? paper,
    int? book,
    int? jobRequest,
  }) = _UserDescription;

  factory UserUploads.fromJson(Map<String, dynamic> json) =>
      _$UserUploadsFromJson(json);
}
