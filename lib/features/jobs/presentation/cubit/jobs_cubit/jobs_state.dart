part of 'jobs_cubit.dart';

@freezed
abstract class JobsState with _$JobsState {
  const factory JobsState.loading() = _JobsLoading;
  const factory JobsState.success(List<JobDetail> data) = _JobsSuccess;
  const factory JobsState.failure(dynamic e) = _JobsFailure;
}