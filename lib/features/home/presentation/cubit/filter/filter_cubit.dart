import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/data/models/multioption_model/multioption_model.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(const FilterState(isOpen: false));

  void toggle() {
    emit(
      FilterState(
        isOpen: !state.isOpen,
        textField: state.textField,
        multiOption: state.multiOption,
      ),
    );
  }

  void modifyTextField(List<String> list) {
    emit(
      FilterState(
        isOpen: state.isOpen,
        textField: list,
        multiOption: state.multiOption,
      ),
    );
  }

  void modifyMultiOption(List<MultioptionModel> list) {
    emit(
      FilterState(
        isOpen: state.isOpen,
        textField: state.textField,
        multiOption: list,
      ),
    );
  }
}
