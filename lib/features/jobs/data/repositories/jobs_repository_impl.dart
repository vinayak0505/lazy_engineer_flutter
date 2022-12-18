import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/jobs/domain/jobs_repository.dart';
import 'package:lazy_engineer/features/jobs/data/datasources/local/jobs_local_datasource.dart';
import 'package:lazy_engineer/features/jobs/data/datasources/remote/jobs_remote_datasource.dart';
import 'package:lazy_engineer/features/jobs/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_response/jobs_response.dart';

import '../../../../core/models/base_response/base_response.dart';

class JobsRepositoryImpl extends JobsRepository {
  final JobsRemoteDatasource _remoteDataSource = JobsRemoteDatasource();
  final JobsLocalDatasource _localDataSource = JobsLocalDatasource();

  @override
  Future<List<JobsResponse>?> getJobsData() async {
    return jobList;
    // try {
    //   BaseResponse<List<JobsResponse>> listJobs =
    //       await _remoteDataSource.getJobs();
    //   return listJobs.data;
    // } catch (e) {
    //   print(e.toString());
    //   return null;
    // }
  }

  @override
  Future<List<JobsResponse>?> searchJobs(String query) async {
    try {
      BaseResponse<List<JobsResponse>> listJobs =
          await _remoteDataSource.searchJobs(query);
      return listJobs.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  List<String>? removeNullList(List<String>? list) {
    if (list == null) return null;
    List<String> ans = [];
    for (String ele in list) {
      if (ele != '') ans.add(ele);
    }
    return ans;
  }

  String? removeNull(String? element) {
    if (element == null || element == '') return null;
    return element;
  }

  @override
  Future<List<JobsResponse>?> applyFilter(FilterRequest filterRequest) async {
    try {
      return jobList;
      // filterRequest = FilterRequest(
      //   multiOption: removeNullList(filterRequest.multiOption),
      //   textFeild: removeNullList(filterRequest.multiOption),
      //   singleOption: removeNull(filterRequest.singleOption),
      // );
      // BaseResponse<List<JobsResponse>> listJobs =
      //     await _remoteDataSource.applyFilter(filterRequest);
      // return listJobs.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<JobsDetailResponse?> getJobsDetailData(String id) async {
    try {
      BaseResponse<JobsDetailResponse> jobsDetail =
          await _remoteDataSource.getJobsDetail(id);
      return jobsDetail.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
