import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/jobs/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_response/jobs_response.dart';
import 'package:lazy_engineer/features/jobs/domain/jobs_repository.dart';

part 'jobs_state.dart';
part 'jobs_cubit.freezed.dart';

class JobsCubit extends Cubit<JobsState> {
  final JobsRepository _repository;
  JobsCubit(this._repository) : super(const JobsState.loading()) {
    getJobs();
  }
  Future<void> getJobs() async {
    try {
      final List<JobsResponse>? data = await _repository.getJobsData();
      if (data != null) {
        emit(JobsState.success(data));
      } else {
        emit(const JobsState.loading());
      }
    } catch (e) {
      emit(JobsState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      emit(const JobsState.loading());
      final List<JobsResponse>? data = await _repository.applyFilter(filterRequest);
      if (data != null) {
        emit(JobsState.success(data));
      } else {
        emit(const JobsState.loading());
      }
    } catch (e) {
      emit(JobsState.failure(e));
    }
  }
}
