import 'package:lazy_engineer/features/jobs/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_response/jobs_response.dart';



abstract class JobsRepository {
  Future<List<JobsResponse>?> getJobsData();
  Future<List<JobsResponse>?> searchJobs(String query);
  Future<List<JobsResponse>?> applyFilter(FilterRequest filterRequest);
  Future<JobsDetailResponse?> getJobsDetailData(String id);
}
