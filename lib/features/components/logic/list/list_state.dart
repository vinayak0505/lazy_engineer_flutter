part of 'list_cubit.dart';

@freezed
abstract class ListState with _$ListState {
  const factory ListState(List list) = _List;
}