import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';
import 'package:lazy_engineer/features/profile/domain/repositories/profile_repository.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _repository;
  ProfileCubit(this._repository) : super(const ProfileState.loading()) {
    getProfile();
  }
  Future<void> getProfile() async {
    try {
      final ProfileModal? userProfile = await _repository.getProfile();
      if (userProfile != null) {
        emit(ProfileState.success(isNotEdit: true, data: userProfile));
      } else {
        emit(const ProfileState.loading());
      }
    } catch (e) {
      emit(ProfileState.failure(e));
    }
  }

  ProfileModal data = const ProfileModal();
  void togleIsEditProfile() {
    state.whenOrNull(
      success: (isNotEdit, data) => emit(
        ProfileState.success(isNotEdit: !isNotEdit, data: data),
      ),
    );
  }
}
