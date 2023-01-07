import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/papers/data/datasources/remote/papers_client.dart';
import 'package:lazy_engineer/features/papers/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class PapersRemoteDatasource {
  final PapersClient _client;

  factory PapersRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(TokenInterceptor());
    dio.options.headers = {};
    final PapersClient client = PapersClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return PapersRemoteDatasource._(client);
  }

  PapersRemoteDatasource._(this._client);
  Future<BaseResponse<List<PaperResponse>>> getPapers() async {
    final BaseResponse<List<PaperResponse>> response = await _client.getPapers();
    return response;
  }

  Future<BaseResponse<List<PaperResponse>>> searchPapers(String query) async {
    final BaseResponse<List<PaperResponse>> response = await _client.searchPapers(query);
    return response;
  }

  Future<BaseResponse<List<PaperResponse>>> applyFilter(FilterRequest filterRequest) async {
    final BaseResponse<List<PaperResponse>> response = await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<PaperDetailResponse>> getPapersDetail(String id) async {
    final BaseResponse<PaperDetailResponse> response = await _client.getPapersDetail(id);
    return response;
  }
}
