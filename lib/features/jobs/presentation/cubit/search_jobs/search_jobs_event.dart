part of 'search_jobs_bloc.dart';

@freezed
class SearchJobsEvent with _$SearchJobsEvent {
  const factory SearchJobsEvent(String query) = _Started;
}