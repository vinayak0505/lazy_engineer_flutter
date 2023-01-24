// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_state.dart';
part 'bottom_nav_cubit.freezed.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState(0));
  void changeIndex(int index) {
    emit(BottomNavState(index));
  }
}
