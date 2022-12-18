part of 'search_jobs_bloc.dart';

@freezed
class SearchJobsState with _$SearchJobsState {
  const factory SearchJobsState.initial() = _SearchJobsInitial;
  const factory SearchJobsState.loading() = _SearchJobsLoading;
  const factory SearchJobsState.failure(dynamic e) = _SearchJobsFailure;
  const factory SearchJobsState.success(List<JobsResponse> data) = _SearchJobsSuccess;
}
