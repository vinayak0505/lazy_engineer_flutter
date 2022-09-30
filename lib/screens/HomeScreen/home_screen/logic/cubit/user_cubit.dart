import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/model/user/user_model.dart';
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
      UserModel? user = await _repository.getUser();
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
