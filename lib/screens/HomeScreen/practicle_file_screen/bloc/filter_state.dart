part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial(bool showFilter) = FilterInitial;
  const factory FilterState.loading() = FilterLoading;
  const factory FilterState.success(List<String> multiOption, String singleOption) = FilterSuccess;
  const factory FilterState.failure(dynamic e) = FilterFailure;
}
