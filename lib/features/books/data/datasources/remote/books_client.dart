import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/books_response.dart';
import 'package:lazy_engineer/features/books/data/models/filter_request.dart/filter_request.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:retrofit/http.dart';

part 'books_client.g.dart';

@RestApi()
abstract class BooksClient {
  factory BooksClient(Dio dio, {String baseUrl}) = _BooksClient;

  @GET(AppConfig.books)
  Future<BaseResponse<List<BooksResponse>>> getBooks([
    @Header(HeaderKeys.tokenHeaderKey) String token = HeaderValues.tempToken,
  ]);

  @GET(AppConfig.booksSearch)
  Future<BaseResponse<List<BooksResponse>>> searchBooks(
    @Query('query') String query,
  );

  @GET(AppConfig.booksSearch)
  Future<BaseResponse<List<BooksResponse>>> applyFilter(
    @Query('query') FilterRequest query,
  );

  @GET(AppConfig.booksDetail)
  Future<BaseResponse<BooksDetailResponse>> getBooksDetail(
    @Body() String id, [
    @Header(HeaderKeys.tokenHeaderKey) String token = HeaderValues.tempToken,
  ]);
}
