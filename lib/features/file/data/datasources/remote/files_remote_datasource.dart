import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/file/data/datasources/remote/files_client.dart';
import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';
import 'package:lazy_engineer/features/file/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class FilesRemoteDatasource {
  final FilesClient _client;

  factory FilesRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(TokenInterceptor());
    dio.options.headers = {};
    final FilesClient client = FilesClient(dio, baseUrl: AppConfig.apiBaseUrl);
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
}
