import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/jobs/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_response/jobs_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import 'jobs_client.dart';

class JobsRemoteDatasource {
  final JobsClient _client;

  JobsRemoteDatasource._(this._client);

  factory JobsRemoteDatasource() {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(responseBody: true));
    dio.options.headers = {};
    JobsClient client = JobsClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return JobsRemoteDatasource._(client);
  }
  Future<BaseResponse<List<JobsResponse>>> getJobs() async {
    BaseResponse<List<JobsResponse>> response = await _client.getJobs();
    return response;
  }

  Future<BaseResponse<List<JobsResponse>>> searchJobs(String query) async {
    BaseResponse<List<JobsResponse>> response = await _client.searchJobs(query);
    return response;
  }

  Future<BaseResponse<List<JobsResponse>>> applyFilter(FilterRequest filterRequest) async {
    BaseResponse<List<JobsResponse>> response = await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<JobsDetailResponse>> getJobsDetail(String id) async {
    BaseResponse<JobsDetailResponse> response = await _client.getJobsDetail(id);
    return response;
  }
}
