part of 'filter_cubit.dart';

@freezed
abstract class FilterState with _$FilterState {
  const factory FilterState(
    bool isOpen, {
    List<String>? textField,
    List<String>? multiOption,
  }) = _FilterState;
}
