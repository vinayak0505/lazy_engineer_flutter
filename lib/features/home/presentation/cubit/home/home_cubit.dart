import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/domain/repositories/home_repository.dart';
import '../../../../../model/user.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _repository;
  HomeCubit(this._repository) : super(const HomeState.loading()) {
    getUser();
  }
  void getUser() async {
    try {
      User? user = await _repository.getUser();
      if (user != null) {
        emit(HomeState.success(user));
      } else {
        emit(const HomeState.loading());
      }
    } catch (e) {
      emit(HomeState.failure(e));
    }
  }
}
