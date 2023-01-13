import 'package:lazy_engineer/features/upload/data/models/upload_models.dart';

abstract class UploadRepository {
  Future<bool?> uplaodBook(UploadBookRequest data);
  Future<bool?> uplaodFiles(UploadFilesRequest data);
  Future<bool?> uplaodJobs(UploadJobsRequest data);
  Future<bool?> uplaodNotes(UploadNotesRequest data);
  Future<bool?> uplaodPaper(UploadPaperRequest data);
}
