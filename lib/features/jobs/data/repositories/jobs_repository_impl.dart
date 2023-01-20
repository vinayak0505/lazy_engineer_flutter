import 'package:flutter/cupertino.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/jobs/data/datasources/local/jobs_local_datasource.dart';
import 'package:lazy_engineer/features/jobs/data/datasources/remote/jobs_remote_datasource.dart';
import 'package:lazy_engineer/features/jobs/data/models/job_response/job_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/features/jobs/domain/jobs_repository.dart';

class JobsRepositoryImpl extends JobsRepository {
  final JobsRemoteDatasource _remoteDataSource = JobsRemoteDatasource();
  final JobsLocalDatasource _localDataSource = JobsLocalDatasource();

  @override
  Future<List<JobDetail>?> getJobsData() async {
    try {
      final BaseResponse<JobResponse> listJobs =
          await _remoteDataSource.getJobs();
      return listJobs.data.result;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<JobDetail>?> searchJobs(String query) async {
    try {
      final BaseResponse<JobResponse> listJobs =
          await _remoteDataSource.searchJobs(query);
      return listJobs.data.result;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  List<String>? removeNullList(List<String>? list) {
    if (list == null) return null;
    final List<String> ans = [];
    String ele;
    for (ele in list) {
      if (ele != '') ans.add(ele);
    }
    return ans;
  }

  String? removeNull(String? element) {
    if (element == null || element == '') return null;
    return element;
  }

  @override
  Future<List<JobDetail>?> applyTextFeildFilter(
    List<String> filter,
    List<JobDetail> data,
  ) async {
    try {
      final List<JobDetail> newData = [];
      for (final job in data) {
        final check = filterCheck(
          elementList: [
            job.company,
            job.experienceLevel,
            job.jobType,
            job.location,
          ],
          filterList: filter,
        );
        if (check) newData.add(job);
      }
      return newData;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<JobsDetailResponse?> getJobsDetailData(String id) async {
    try {
      final BaseResponse<JobsDetailResponse> jobsDetail =
          await _remoteDataSource.getJobsDetail(id);
      return jobsDetail.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<bool> download(String fileLink) async {
    try {
      final int start = fileLink.indexOf('/o/') + 3;
      final int end = fileLink.indexOf('?generation');
      final String name = fileLink.substring(start, end);
      await _localDataSource.downloadJobs(name, fileLink);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
