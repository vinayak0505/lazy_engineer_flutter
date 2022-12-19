import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/file/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/files_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import 'files_client.dart';

class FilesRemoteDatasource {
  final FilesClient _client;

  FilesRemoteDatasource._(this._client);

  factory FilesRemoteDatasource() {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(responseBody: true));
    dio.options.headers = {};
    FilesClient client = FilesClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return FilesRemoteDatasource._(client);
  }
  Future<BaseResponse<List<FilesResponse>>> getFiles() async {
    BaseResponse<List<FilesResponse>> response = await _client.getFiles();
    return response;
  }

  Future<BaseResponse<List<FilesResponse>>> searchFiles(String query) async {
    BaseResponse<List<FilesResponse>> response =
        await _client.searchFiles(query);
    return response;
  }

  Future<BaseResponse<List<FilesResponse>>> applyFilter(
      FilterRequest filterRequest) async {
    BaseResponse<List<FilesResponse>> response =
        await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<FilesDetailResponse>> getFilesDetail(String id) async {
    BaseResponse<FilesDetailResponse> response =
        await _client.getFilesDetail(id);
    return response;
  }
}
