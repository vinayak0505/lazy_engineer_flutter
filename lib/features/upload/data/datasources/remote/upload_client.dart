import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_book_request/upload_book_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_files_request/upload_files_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_jobs_request/upload_jobs_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_notes_request/upload_notes_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_paper_request/upload_paper_request.dart';
import 'package:retrofit/http.dart';

import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';

part 'upload_client.g.dart';

@RestApi()
abstract class UploadClient {
  factory UploadClient(Dio dio, {String baseUrl}) = _UploadClient;

  @POST(AppConfig.uploadBooks)
    Future<BaseResponse> uploadBook(@Body() UploadBookRequest body);
  
  @POST(AppConfig.uploadFiles)
  Future<BaseResponse> uploadFiles(@Body() UploadFilesRequest body);

  @POST(AppConfig.uploadJobs)
  Future<BaseResponse> uploadJobs(@Body() UploadJobsRequest body);

  @POST(AppConfig.uploadNotes)
  Future<BaseResponse> uploadNotes(@Body() UploadNotesRequest body);

  @POST(AppConfig.uploadQuestionPaper)
  Future<BaseResponse> uploadQuestionPaper(@Body() UploadPaperRequest body);
}
