import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/screens/home_screen/bloc/user_state.dart';
import '../../../model/user.dart';
import '../repo/user_repository.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository _repository;
  UserCubit(this._repository) : super(UserStateLoadingState()) {
    getUser();
  }
  void getUser() async {
    emit(UserStateLoadingState());
    try {
      User? user = await _repository.getUser();
      if (user != null) {
        emit(UserStateSuccessState(user));
      } else {
        emit(UserStateLoadingState());
      }
    } catch (e) {
      emit(UserStateFailureState(e));
    }
  }
}
