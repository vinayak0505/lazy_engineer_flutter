import 'package:dio/dio.dart';
import 'package:lazy_engineer/assets/constants/token.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/jobs/data/datasources/remote/jobs_client.dart';
import 'package:lazy_engineer/features/jobs/data/models/job_response/job_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class JobsRemoteDatasource {
  final JobsClient _client;

  factory JobsRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, _) async {
          //   if (error.response?.statusCode == 403 ||
          //       error.response?.statusCode == 401) {
          //     await refreshToken();
          //   }
        },
      ),
    );
    dio.options.headers.addAll(
      {HeaderKeys.tokenHeaderKey: GetToken.userToken},
    );
    dio.options.connectTimeout = AppConfig.connectTimeout;
    dio.options.receiveTimeout = AppConfig.receiveTimeout;
    final JobsClient client = JobsClient(
      dio,
      baseUrl: AppConfig.apiBaseUrl,
    );
    return JobsRemoteDatasource._(client);
  }

  JobsRemoteDatasource._(this._client);
  Future<BaseResponse<JobResponse>> getJobs() async {
    final BaseResponse<JobResponse> response = await _client.getJobs();
    return response;
  }

  Future<BaseResponse<JobResponse>> searchJobs(String query) async {
    final BaseResponse<JobResponse> response = await _client.searchJobs(query);
    return response;
  }

  Future<BaseResponse<JobResponse>> applyFilter(
    FilterRequest filterRequest,
  ) async {
    final BaseResponse<JobResponse> response =
        await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<JobsDetailResponse>> getJobsDetail(String id) async {
    final BaseResponse<JobsDetailResponse> response =
        await _client.getJobsDetail(id);
    return response;
  }

  Future<void> refreshToken() async {
    // final refreshToken = await _storage.read(key: 'refreshToken');
    // final response = await api
    //     .post('/auth/refresh', data: {'refreshToken': refreshToken});

    // if (response.statusCode == 201) {
    //   // successfully got the new access token
    //   accessToken = response.data;
    // } else {
    //   // refresh token is wrong so log out user.
    //   accessToken = null;
    //   _storage.deleteAll();
    // }
  }
}
