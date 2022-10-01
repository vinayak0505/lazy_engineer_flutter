// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/repo/filter_repository.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit(this._repository) : super(const FilterState.initial(false));

  final FilterRepository _repository;

  void getFilter(List<String> multiOption, String singleOption) async {
    emit(const FilterState.loading());
    try {
          bool? getFilter = await _repository.getFilter(multiOption, singleOption);
          emit(FilterState.success(multiOption, singleOption));
    } catch (e) {
      emit(FilterState.failure(e));
    }
  }
}