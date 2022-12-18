part of 'jobs_detail_cubit.dart';

@freezed
abstract class JobsDetailState with _$JobsDetailState {
  const factory JobsDetailState.loading() = _JobsDetailLoading;
  const factory JobsDetailState.success(JobsDetailResponse data, bool? rating) = _JobsDetailSuccess;
  const factory JobsDetailState.failure(dynamic e) = _JobsDetailFailure;
}
