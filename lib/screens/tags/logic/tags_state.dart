part of 'tags_cubit.dart';

@freezed
abstract class TagsState with _$TagsState {
  const factory TagsState(List<String> tags) = Tags;
}
