import 'package:lazy_engineer/features/upload/data/datasources/remote/upload_remote_datasource.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_book_request.dart/upload_book_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_files_request.dart/upload_files_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_jobs_request.dart/upload_jobs_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_notes_request/upload_notes_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_paper_request/upload_paper_request.dart';

class UploadRepository {
  final UploadRemoteDataSource _remoteDataSource = UploadRemoteDataSource();
  // final UploadLocalDataSource _localDataSource = UploadLocalDataSource();

  Future<bool?> uplaodBook(UploadBookRequest data) async {
    try {
      String? status = await _remoteDataSource.uploadBook(data);
      return (status == '200')? true : false;
    } catch (e) {
      return null;
    }
  }

  Future<bool?> uplaodFiles(UploadFilesRequest data) async {
    try {
      String? status = await _remoteDataSource.uploadFiles(data);
      return (status == '200')? true : false;
    } catch (e) {
      return null;
    }
  }

  Future<bool?> uplaodJobs(UploadJobsRequest data) async {
    try {
      String? status = await _remoteDataSource.uploadJobs(data);
      return (status == '200')? true : false;
    } catch (e) {
      return null;
    }
  }

  Future<bool?> uplaodNotes(UploadNotesRequest data) async {
    try {
      String? status = await _remoteDataSource.uploadNotes(data);
      return (status == '200')? true : false;
    } catch (e) {
      return null;
    }
  }

  Future<bool?> uplaodPaper(UploadPaperRequest data) async {
    try {
      String? status = await _remoteDataSource.uploadPaper(data);
      return (status == '200')? true : false;
    } catch (e) {
      return null;
    }
  }
}
