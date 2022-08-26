import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../model/user.dart';
import '../../data/repo/user_repository.dart';
import '../cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository _repository;
  UserCubit(this._repository) : super(UserFetchLoadingState()) {
    getUser();
  }
  void getUser() async {
    emit(UserFetchLoadingState());
    try {
      User? user = await _repository.getUser();
      if (user != null) {
        emit(UserFetchSuccessState(user));
      } else {
        emit(UserFetchLoadingState());
      }
    } catch (e) {
      emit(UserFetchFailureState(e));
    }
  }
}
