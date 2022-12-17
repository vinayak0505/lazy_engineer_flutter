import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/papers/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import 'papers_client.dart';

class PapersRemoteDatasource {
  final PapersClient _client;

  PapersRemoteDatasource._(this._client);

  factory PapersRemoteDatasource() {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(responseBody: true));
    dio.options.headers = {};
    PapersClient client = PapersClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return PapersRemoteDatasource._(client);
  }
  Future<BaseResponse<List<PaperResponse>>> getPapers() async {
    BaseResponse<List<PaperResponse>> response = await _client.getPapers();
    return response;
  }

  Future<BaseResponse<List<PaperResponse>>> searchPapers(String query) async {
    BaseResponse<List<PaperResponse>> response = await _client.searchPapers(query);
    return response;
  }

  Future<BaseResponse<List<PaperResponse>>> applyFilter(FilterRequest filterRequest) async {
    BaseResponse<List<PaperResponse>> response = await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<PaperDetailResponse>> getPapersDetail(String id) async {
    BaseResponse<PaperDetailResponse> response = await _client.getPapersDetail(id);
    return response;
  }
}
