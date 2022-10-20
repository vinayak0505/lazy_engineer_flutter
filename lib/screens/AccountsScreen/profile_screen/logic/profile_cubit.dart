// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/screens/AccountsScreen/profile_screen/data/profile_modal.dart';
import 'package:lazy_engineer/screens/AccountsScreen/profile_screen/data/repo/profile_repository.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _repository;
  ProfileCubit(this._repository) : super(const ProfileState.profileLoading()) {
    getProfileData();
  }

  ProfileModal? data;

  getProfileData() async {
    emit(const ProfileState.profileLoading());
    try {
      data = _repository.getProfileData();
      if (data != null) {
        emit(ProfileState.profileSuccess(data!));
      } else {
        debugPrint('=====');
        emit(const ProfileState.profileLoading());
      }
    } catch (e) {
      emit(ProfileState.profileFailure(e));
    }
  }

  void editData({
    required String userName,
    required String branch,
    required int year,
    required String universityName,
    required String universityAddress,
    required String userDescription,
    required String email,
    required String mobileNumber,
    required int yearOfAdmission,
    required ExperienceLevel experienceLevel,
    required JobType jobType,
    required String userAddress,
  }) {
    data!.userName = userName;
    data!.branch = branch;
    data!.year = year;
    data!.universityName = universityName;
    data!.universityAddress = universityAddress;
    data!.userDescription = userDescription;
    data!.email = email;
    data!.mobileNumber = mobileNumber;
    data!.yearOfAdmission = yearOfAdmission;
    data!.experienceLevel = experienceLevel;
    data!.jobType = jobType;
    data!.userAddress = userAddress;

    emit(ProfileState.editSuccess(data!));
  }
}
