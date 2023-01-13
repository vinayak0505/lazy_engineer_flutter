import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/assets/constants/token.dart';
import 'package:lazy_engineer/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:lazy_engineer/features/home/domain/repositories/home_repository.dart';
import 'package:lazy_engineer/model/user.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  final HomeRepository _repository;
  UserCubit(this._repository) : super(const UserState.loading()) {
    getUser();
  }
  Future<void> getUser() async {
    try {
      final User? user = await _repository.getUser();
      final String? token = await AuthLocalDataSource().getToken();
      GetToken(token);
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
