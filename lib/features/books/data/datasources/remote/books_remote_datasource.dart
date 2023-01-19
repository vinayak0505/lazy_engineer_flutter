import 'package:dio/dio.dart';
import 'package:lazy_engineer/assets/constants/token.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/books/data/datasources/remote/books_client.dart';
import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class BooksRemoteDatasource {
  final BooksClient _client;

  factory BooksRemoteDatasource() {
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
    final BooksClient client = BooksClient(
      dio,
      baseUrl: AppConfig.apiBaseUrl,
    );
    return BooksRemoteDatasource._(client);
  }

  BooksRemoteDatasource._(this._client);
  Future<BaseResponse<BookResponse>> getBooks() async {
    final BaseResponse<BookResponse> response = await _client.getBooks();
    return response;
  }

  Future<BaseResponse<BookResponse>> searchBooks(String query) async {
    final BaseResponse<BookResponse> response =
        await _client.searchBooks(query);
    return response;
  }

  Future<BaseResponse<BookResponse>> applyFilter(
    FilterRequest filterRequest,
  ) async {
    final BaseResponse<BookResponse> response =
        await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<BooksDetailResponse>> getBooksDetail(String id) async {
    final BaseResponse<BooksDetailResponse> response =
        await _client.getBooksDetail(id);
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
