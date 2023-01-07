import 'package:lazy_engineer/features/upload/data/datasources/remote/upload_remote_datasource.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_models.dart';
import 'package:lazy_engineer/features/upload/domain/repositories/upload_repository.dart';

class UploadRepositoryImpl implements UploadRepository {
  final UploadRemoteDataSource _remoteDataSource = UploadRemoteDataSource();
  // final UploadLocalDataSource _localDataSource = UploadLocalDataSource();

  @override
  Future<bool?> uplaodBook(UploadBookRequest data) async {
    try {
      final String status = await _remoteDataSource.uploadBook(data);
      if (status == 'failier') {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> uplaodFiles(UploadFilesRequest data) async {
    try {
      final String status = await _remoteDataSource.uploadFiles(data);
      if (status == 'failier') {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> uplaodJobs(UploadJobsRequest data) async {
    try {
      final String status = await _remoteDataSource.uploadJobs(data);
      if (status == 'failier') {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> uplaodNotes(UploadNotesRequest data) async {
    try {
      final String status = await _remoteDataSource.uploadNotes(data);
      if (status == 'failier') {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> uplaodPaper(UploadPaperRequest data) async {
    try {
      final String status = await _remoteDataSource.uploadPaper(data);
      if (status == 'failier') {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      return null;
    }
  }
}
