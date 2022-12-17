import 'package:lazy_engineer/assets/images.dart';

class ProfileModal {
  String? userName;
  String? userPic;
  String? branch;
  int? year;
  String? universityName;
  String? universityAddress;
  String? userDescription;
  int? notes;
  int? file;
  int? paper;
  int? book;
  int? jobRequest;
  String? email;
  String? mobileNumber;
  int? yearOfAdmission;
  ExperienceLevel? experienceLevel;
  JobType? jobType;
  String? userAddress;
  ProfileModal({
    String? userName,
    String? userPic,
    String? branch,
    int? year,
    String? universityName,
    String? universityAddress,
    String? userDescription,
    int? notes,
    int? file,
    int? paper,
    int? book,
    int? jobRequest,
    String? email,
    String? mobileNumber,
    int? yearOfAdmission,
    ExperienceLevel? experienceLevel,
    JobType? jobType,
    String? userAddress,
  });
  factory ProfileModal.dummy() {
    return ProfileModal(
      userPic: AppImages.anonymousProfile,
      userName: 'Harman Singh Jaggi',
      branch: 'CSE-3',
      year: 3,
      universityName: 'Guru Tegh Bahadur Institute of Technology',
      universityAddress: 'Delhi, India',
      userDescription:
          'You will face many defeats in life, but never let yourself be defeated.',
      notes: 10,
      file: 2,
      paper: 2,
      book: 1,
      jobRequest: 5,
      email: 'harmanjaggs@gmail.com',
      mobileNumber: '91+ 9873424386',
      yearOfAdmission: 2019,
      experienceLevel: ExperienceLevel.internship,
      jobType: JobType.internship,
      userAddress: 'B-165, Phase 1, Ashok Vihar, Delhi - 110052',
    );
  }
}

enum ExperienceLevel { internship, fullTime, consultor }

enum JobType { internship, fullTime, consultor }
