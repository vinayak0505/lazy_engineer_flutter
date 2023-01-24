import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/jobs/data/models/job_response/job_response.dart';
import 'package:lazy_engineer/features/jobs/data/repositories/jobs_repository_impl.dart';

part 'jobs_state.dart';
part 'jobs_cubit.freezed.dart';

class JobsCubit extends Cubit<JobsState> {
  final JobsRepositoryImpl _repository;
  JobsCubit(this._repository) : super(const JobsState.loading()) {
    getJobs();
  }
  List<JobDetail>? data;
  Future<void> getJobs() async {
    try {
      data = await _repository.getJobsData();
      if (data != null) {
        emit(JobsState.success(data!));
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
      List<JobDetail>? newData;
      //* textfeild
      if (filterRequest.textField != null) {
        newData = await _repository.applyTextFeildFilter(
          filterRequest.textField!,
          data!,
        );
      }
      //* multiOption
      if (filterRequest.multiOption != null) {
        newData = await _repository.applyMultiOptionFilter(
          filterRequest.multiOption!,
          newData ?? data!,
        );
      }
      emit(JobsState.success(newData ?? data!));
    } catch (e) {
      emit(JobsState.failure(e));
    }
  }
}
