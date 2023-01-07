import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/jobs/data/datasources/remote/jobs_client.dart';
import 'package:lazy_engineer/features/jobs/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_response/jobs_response.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class JobsRemoteDatasource {
  final JobsClient _client;

  factory JobsRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(TokenInterceptor());
    dio.options.headers = {};
    final JobsClient client = JobsClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return JobsRemoteDatasource._(client);
  }

  JobsRemoteDatasource._(this._client);
  Future<BaseResponse<List<JobsResponse>>> getJobs() async {
    final BaseResponse<List<JobsResponse>> response = await _client.getJobs();
    return response;
  }

  Future<BaseResponse<List<JobsResponse>>> searchJobs(String query) async {
    final BaseResponse<List<JobsResponse>> response = await _client.searchJobs(query);
    return response;
  }

  Future<BaseResponse<List<JobsResponse>>> applyFilter(FilterRequest filterRequest) async {
    final BaseResponse<List<JobsResponse>> response = await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<JobsDetailResponse>> getJobsDetail(String id) async {
    final BaseResponse<JobsDetailResponse> response = await _client.getJobsDetail(id);
    return response;
  }
}
