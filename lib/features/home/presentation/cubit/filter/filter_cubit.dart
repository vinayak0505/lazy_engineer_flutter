import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit()
      : super(const FilterState(
          false,
          textFeild: null,
          multiOption: null,
        ));

  void toggle() {
    emit(FilterState(
      !state.isOpen,
      textFeild: state.textFeild,
      multiOption: state.multiOption,
    ));
  }

  void modifyTextFeild(List<String> list) {
    emit(FilterState(
      state.isOpen,
      textFeild: list,
      multiOption: state.multiOption,
    ));
  }

  void modifyMultiOption(List<String> list) {
    emit(FilterState(
      state.isOpen,
      textFeild: state.textFeild,
      multiOption: list,
    ));
  }
}
