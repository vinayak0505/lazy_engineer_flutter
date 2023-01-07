import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/upload/data/datasources/remote/upload_client.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_book_request/upload_book_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_files_request/upload_files_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_jobs_request/upload_jobs_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_notes_request/upload_notes_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_paper_request/upload_paper_request.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class UploadRemoteDataSource {
  final UploadClient _client;

  factory UploadRemoteDataSource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(requestBody: true));
    dio.options.headers = {};
    final UploadClient client = UploadClient(
      dio,
      baseUrl: AppConfig.apiBaseUrl,
    );
    return UploadRemoteDataSource._(client);
  }

  UploadRemoteDataSource._(this._client);

  Future<String> uploadBook(UploadBookRequest data) async {
    final BaseResponse response = await _client.uploadBook(data.toFormData());
    return response.status;
  }

  Future<String> uploadFiles(UploadFilesRequest data) async {
    final BaseResponse response = await _client.uploadFiles(data.toFormData());
    return response.status;
  }

  Future<String> uploadJobs(UploadJobsRequest data) async {
    final BaseResponse response = await _client.uploadJobs(data.toFormData());
    return response.status;
  }

  Future<String> uploadNotes(UploadNotesRequest data) async {
    final BaseResponse response = await _client.uploadNotes(data.toFormData());
    return response.status;
  }

  Future<String> uploadPaper(UploadPaperRequest data) async {
    final BaseResponse response = await _client.uploadQuestionPaper(data.toFormData());
    return response.status;
  }
}
