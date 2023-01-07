import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_book_request/upload_book_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_files_request/upload_files_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_jobs_request/upload_jobs_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_paper_request/upload_paper_request.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:retrofit/http.dart';

part 'upload_client.g.dart';

@RestApi()
abstract class UploadClient {
  factory UploadClient(Dio dio, {String baseUrl}) = _UploadClient;

  @POST(AppConfig.uploadBooks)
  @MultiPart()
  Future<BaseResponse> uploadBook(
    @Body() FormData body, [
    @Header(HeaderKeys.tokenHeaderKey) String token = HeaderValues.tempToken,
  ]);

  @POST(AppConfig.uploadFiles)
  @MultiPart()
  Future<BaseResponse> uploadFiles(
    @Body() FormData body, [
    @Header(HeaderKeys.tokenHeaderKey) String token = HeaderValues.tempToken,
  ]);

  @POST(AppConfig.uploadJobs)
  @MultiPart()
  Future<BaseResponse> uploadJobs(
    @Body() FormData body, [
    @Header(HeaderKeys.tokenHeaderKey) String token = HeaderValues.tempToken,
  ]);

  @POST(AppConfig.uploadNotes)
  @MultiPart()
  Future<BaseResponse> uploadNotes(
    @Body() FormData body, [
    @Header(HeaderKeys.tokenHeaderKey) String token = HeaderValues.tempToken,
  ]);

  @POST(AppConfig.uploadQuestionPaper)
  @MultiPart()
  Future<BaseResponse> uploadQuestionPaper(
    @Body() FormData body, [
    @Header(HeaderKeys.tokenHeaderKey) String token = HeaderValues.tempToken,
  ]);
}
