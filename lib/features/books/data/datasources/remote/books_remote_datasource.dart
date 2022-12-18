import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/books_response.dart';
import 'package:lazy_engineer/features/books/data/models/filter_request.dart/filter_request.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import 'books_client.dart';

class BooksRemoteDatasource {
  final BooksClient _client;

  BooksRemoteDatasource._(this._client);

  factory BooksRemoteDatasource() {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(responseBody: true));
    dio.options.headers = {};
    BooksClient client = BooksClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return BooksRemoteDatasource._(client);
  }
  Future<BaseResponse<List<BooksResponse>>> getBooks() async {
    BaseResponse<List<BooksResponse>> response = await _client.getBooks();
    return response;
  }

  Future<BaseResponse<List<BooksResponse>>> searchBooks(String query) async {
    BaseResponse<List<BooksResponse>> response = await _client.searchBooks(query);
    return response;
  }

  Future<BaseResponse<List<BooksResponse>>> applyFilter(FilterRequest filterRequest) async {
    BaseResponse<List<BooksResponse>> response = await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<BooksDetailResponse>> getBooksDetail(String id) async {
    BaseResponse<BooksDetailResponse> response = await _client.getBooksDetail(id);
    return response;
  }
}
