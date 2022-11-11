import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/domain/repositories/home_repository.dart';
import '../../../../../model/user.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  final HomeRepository _repository;
  UserCubit(this._repository) : super(const UserState.loading()) {
    getUser();
  }
  void getUser() async {
    try {
      User? user = await _repository.getUser();
      if (user != null) {
        emit(UserState.success(user));
      } else {
        emit(const UserState.loading());
      }
    } catch (e) {
      emit(UserState.failure(e));
    }
  }
}
