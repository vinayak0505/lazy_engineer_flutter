import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/books/data/datasources/remote/books_client.dart';
import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/books_response.dart';
import 'package:lazy_engineer/features/books/data/models/filter_request.dart/filter_request.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class BooksRemoteDatasource {
  final BooksClient _client;

  factory BooksRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(TokenInterceptor());
    dio.options.headers = {};
    final BooksClient client = BooksClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return BooksRemoteDatasource._(client);
  }

  BooksRemoteDatasource._(this._client);
  Future<BaseResponse<List<BooksResponse>>> getBooks() async {
    final BaseResponse<List<BooksResponse>> response = await _client.getBooks();
    return response;
  }

  Future<BaseResponse<List<BooksResponse>>> searchBooks(String query) async {
    final BaseResponse<List<BooksResponse>> response = await _client.searchBooks(query);
    return response;
  }

  Future<BaseResponse<List<BooksResponse>>> applyFilter(FilterRequest filterRequest) async {
    final BaseResponse<List<BooksResponse>> response = await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<BooksDetailResponse>> getBooksDetail(String id) async {
    final BaseResponse<BooksDetailResponse> response = await _client.getBooksDetail(id);
    return response;
  }
}
