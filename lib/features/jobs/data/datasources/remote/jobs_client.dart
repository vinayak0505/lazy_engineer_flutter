import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/jobs/data/models/job_response/job_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:retrofit/http.dart';

part 'jobs_client.g.dart';

@RestApi()
abstract class JobsClient {
  factory JobsClient(Dio dio, {String baseUrl}) = _JobsClient;

  @GET(AppConfig.jobs)
  Future<BaseResponse<JobResponse>> getJobs([
    @Header(HeaderKeys.tokenHeaderKey) String token = HeaderValues.tempToken,
  ]);

  @GET(AppConfig.jobsSearch)
  Future<BaseResponse<JobResponse>> searchJobs(
    @Query('query') String query,
  );

  @GET(AppConfig.jobsSearch)
  Future<BaseResponse<JobResponse>> applyFilter(
    @Query('query') FilterRequest query,
  );

  @GET(AppConfig.jobsDetail)
  Future<BaseResponse<JobsDetailResponse>> getJobsDetail(
    @Body() String id, [
    @Header(HeaderKeys.tokenHeaderKey) String token = HeaderValues.tempToken,
  ]);
}
