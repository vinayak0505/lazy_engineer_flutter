import 'package:lazy_engineer/features/jobs/data/models/job_response/job_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';

abstract class JobsRepository {
  Future<List<JobDetail>?> getJobsData();
  Future<List<JobDetail>?> searchJobs(String query);
  Future<List<JobDetail>?> applyTextFeildFilter(
    List<String> filter,
    List<JobDetail> data,
  );
  Future<JobsDetailResponse?> getJobsDetailData(String id);
  Future<bool> download(String fileLink);
}
