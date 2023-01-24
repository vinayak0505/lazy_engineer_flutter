import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(const EditProfileState.initial());

  late ProfileModal data;

  void editData(ProfileModal data) {
    const EditProfileState.loading();
    try {
      emit(EditProfileState.success(data));
    } catch (e) {
      emit(EditProfileState.failure(e));
    }
  }
}
