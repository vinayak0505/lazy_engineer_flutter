import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);
  int index = 0;
  void getIndex(int value) {
    index = value;
    return emit(value);
  }
}
