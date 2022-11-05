import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/upload/data/datasources/remote/upload_client.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_book_request/upload_book_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_files_request/upload_files_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_jobs_request/upload_jobs_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_notes_request/upload_notes_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_paper_request/upload_paper_request.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';

class UploadRemoteDataSource {
  final UploadClient _client;

  UploadRemoteDataSource._(this._client);

  factory UploadRemoteDataSource() {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(responseBody: true));
    dio.options.headers = {};
    UploadClient client = UploadClient(
      dio,
      baseUrl: AppConfig.apiBaseUrl,
    );
    return UploadRemoteDataSource._(client);
  }

  Future<String> uploadBook(UploadBookRequest data) async {
    BaseResponse response = await _client.uploadBook(data);
    return response.status;
  }

  Future<String> uploadFiles(UploadFilesRequest data) async {
    BaseResponse response = await _client.uploadFiles(data);
    return response.status;
  }

  Future<String> uploadJobs(UploadJobsRequest data) async {
    BaseResponse response = await _client.uploadJobs(data);
    return response.status;
  }

  Future<String> uploadNotes(UploadNotesRequest data) async {
    BaseResponse response = await _client.uploadNotes(data);
    return response.status;
  }

  Future<String> uploadPaper(UploadPaperRequest data) async {
    BaseResponse response = await _client.uploadQuestionPaper(data);
    return response.status;
  }
}
