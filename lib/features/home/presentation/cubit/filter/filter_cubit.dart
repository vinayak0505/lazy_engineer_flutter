import 'package:flutter_bloc/flutter_bloc.dart';

class FilterCubit extends Cubit<bool> {
  FilterCubit() : super(false);

  List<String>? textFeild;
  List<String>? multiOption;

  void toggle() {
    emit(!state);
  }

  void modifyTextFeild(List<String> list) {
    textFeild = list;
    print('cubit $textFeild');
  }

  void modifyMultiOption(List<String> list) {
    multiOption = list;
    print('cubit $multiOption');
  }
}
