import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:retrofit/http.dart';

part 'upload_client.g.dart';

@RestApi()
abstract class UploadClient {
  factory UploadClient(Dio dio, {String baseUrl}) = _UploadClient;

  @POST(AppConfig.uploadBooks)
  @MultiPart()
  Future<BaseResponse> uploadBook(@Body() FormData body);

  @POST(AppConfig.uploadFiles)
  @MultiPart()
  Future<BaseResponse> uploadFiles(@Body() FormData body);

  @POST(AppConfig.uploadJobs)
  @MultiPart()
  Future<BaseResponse> uploadJobs(@Body() FormData body);

  @POST(AppConfig.uploadNotes)
  @MultiPart()
  Future<BaseResponse> uploadNotes(@Body() FormData body);

  @POST(AppConfig.uploadQuestionPaper)
  @MultiPart()
  Future<BaseResponse> uploadQuestionPaper(@Body() FormData body);
}
