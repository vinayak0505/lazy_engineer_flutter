import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';
import 'package:lazy_engineer/features/profile/data/repositories/profile_repository_impl.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepositoryImpl _repository;
  ProfileCubit(this._repository) : super(const ProfileState.loading()) {
    getProfile();
  }
  ProfileModal? userProfile;
  bool? isNotEditCheck;
  Future<void> getProfile() async {
    try {
      userProfile = await _repository.getProfile();
      if (userProfile != null) {
        isNotEditCheck = true;
        emit(
          ProfileState.success(
            isNotEdit: true,
            data: userProfile,
          ),
        );
      } else {
        emit(const ProfileState.loading());
      }
    } catch (e) {
      emit(ProfileState.failure(e));
    }
  }

  void togleIsEditProfile() {
    isNotEditCheck = !isNotEditCheck!;
    emit(ProfileState.success(isNotEdit: isNotEditCheck!));
  }
}
