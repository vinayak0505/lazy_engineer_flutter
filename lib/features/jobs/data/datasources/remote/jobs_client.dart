import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_response/jobs_response.dart';
import 'package:retrofit/http.dart';
import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import '../../models/filter_request/filter_request.dart';

part 'jobs_client.g.dart';

@RestApi()
abstract class JobsClient {
  factory JobsClient(Dio dio, {String baseUrl}) = _JobsClient;

  @GET(AppConfig.jobs)
  Future<BaseResponse<List<JobsResponse>>> getJobs();

  @GET(AppConfig.jobsSearch)
  Future<BaseResponse<List<JobsResponse>>> searchJobs(
    @Query('query') String query,
  );

  @GET(AppConfig.jobsSearch)
  Future<BaseResponse<List<JobsResponse>>> applyFilter(
    @Query('query') FilterRequest query,
  );

  @GET(AppConfig.jobsDetail)
  Future<BaseResponse<JobsDetailResponse>> getJobsDetail(
    @Body() String id,
  );
}
