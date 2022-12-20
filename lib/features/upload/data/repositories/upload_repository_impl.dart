import 'package:flutter/foundation.dart';
import 'package:lazy_engineer/features/upload/data/datasources/remote/upload_remote_datasource.dart';
import 'package:lazy_engineer/features/upload/domain/repositories/upload_repository.dart';
import '../models/upload_models.dart';

class UploadRepositoryImpl implements UploadRepository {
  final UploadRemoteDataSource _remoteDataSource = UploadRemoteDataSource();
  // final UploadLocalDataSource _localDataSource = UploadLocalDataSource();

  @override
  Future<bool?> uplaodBook(UploadBookRequest data) async {
    try {
      // String? status = await _remoteDataSource.uploadBook(data);
      if (!kIsWeb) {}
      return true;
      // return (status == '200')? true : false;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> uplaodFiles(UploadFilesRequest data) async {
    try {
      String? status = await _remoteDataSource.uploadFiles(data);
      return (status == '200') ? true : false;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> uplaodJobs(UploadJobsRequest data) async {
    try {
      String? status = await _remoteDataSource.uploadJobs(data);
      return (status == '200') ? true : false;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> uplaodNotes(UploadNotesRequest data) async {
    try {
      String? status = await _remoteDataSource.uploadNotes(data);
      return (status == '200') ? true : false;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> uplaodPaper(UploadPaperRequest data) async {
    try {
      String? status = await _remoteDataSource.uploadPaper(data);
      return (status == '200') ? true : false;
    } catch (e) {
      return null;
    }
  }
}
