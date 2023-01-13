import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/features/jobs/domain/jobs_repository.dart';

part 'jobs_detail_state.dart';
part 'jobs_detail_cubit.freezed.dart';

class JobsDetailCubit extends Cubit<JobsDetailState> {
  final JobsRepository _repository;
  final String id;
  JobsDetailCubit(this._repository, this.id)
      : super(const JobsDetailState.loading()) {
    getJobsDetail();
  }
  Future<void> getJobsDetail() async {
    try {
      final JobsDetailResponse data = jobsDetail;
      // data = await _repository.getJobsDetailData(id);
      if (data != null) {
        emit(JobsDetailState.success(jobsDetail, null));
      } else {
        emit(const JobsDetailState.loading());
      }
    } catch (e) {
      emit(JobsDetailState.failure(e));
    }
  }

  void like() {
    emit(JobsDetailState.success(jobsDetail, true));
  }

  void dislike() {
    emit(JobsDetailState.success(jobsDetail, false));
  }

  void ratingNull() {
    emit(JobsDetailState.success(jobsDetail, null));
  }
}
