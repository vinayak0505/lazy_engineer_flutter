part of 'search_string_bloc.dart';

@freezed
class SearchStringEvent with _$SearchStringEvent {
  const factory SearchStringEvent(String query) = _Started;
}
