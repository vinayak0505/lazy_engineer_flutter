import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/file/data/datasources/remote/files_client.dart';
import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';
import 'package:lazy_engineer/navigation/dio/header.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class FilesRemoteDatasource {
  final FilesClient _client;

  factory FilesRemoteDatasource() {
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
      {HeaderKeys.tokenHeaderKey: HeaderValues.userToken},
    );
    dio.options.connectTimeout = AppConfig.connectTimeout;
    dio.options.receiveTimeout = AppConfig.receiveTimeout;
    final FilesClient client = FilesClient(
      dio,
      baseUrl: AppConfig.apiBaseUrl,
    );
    return FilesRemoteDatasource._(client);
  }

  FilesRemoteDatasource._(this._client);
  Future<BaseResponse<FileResponse>> getFiles() async {
    final BaseResponse<FileResponse> response = await _client.getFiles();
    return response;
  }

  Future<BaseResponse<FileResponse>> searchFiles(String query) async {
    final BaseResponse<FileResponse> response =
        await _client.searchFiles(query);
    return response;
  }

  Future<BaseResponse<FileResponse>> applyFilter(
    FilterRequest filterRequest,
  ) async {
    final BaseResponse<FileResponse> response =
        await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<FilesDetailResponse>> getFilesDetail(String id) async {
    final BaseResponse<FilesDetailResponse> response =
        await _client.getFilesDetail(id);
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
