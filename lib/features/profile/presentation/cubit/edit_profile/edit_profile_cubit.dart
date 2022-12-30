import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(const EditProfileState.initial());

  late ProfileModal data;

  void editData({
    required String userName,
    required String branch,
    required int semister,
    required String universityName,
    required String userDescription,
    required String email,
    required String mobileNumber,
    required int yearOfAdmission,
    required List<String> experienceLevel,
    required List<String> jobType,
    required String userAddress,
  }) {
    const EditProfileState.loading();
    try {
      data = ProfileModal(
        userName: userName,
        branch: branch,
        semister: semister,
        universityName: universityName,
        userDescription: userDescription,
        contact: Contact(
          email: email,
          mobileNumber: mobileNumber,
        ),
        yearOfAdmission: yearOfAdmission,
        experienceLevel: experienceLevel,
        jobType: jobType,
        userAddress: userAddress,
      );
      emit(EditProfileState.success(data));
    } catch (e) {
      emit(EditProfileState.failure(e));
    }
  }
}
