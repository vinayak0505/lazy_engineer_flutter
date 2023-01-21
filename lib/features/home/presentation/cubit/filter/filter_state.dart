part of 'filter_cubit.dart';

@freezed
abstract class FilterState with _$FilterState {
  const factory FilterState({
    required bool isOpen,
    List<String>? textField,
    List<MultioptionModel>? multiOption,
  }) = _FilterState;
}
