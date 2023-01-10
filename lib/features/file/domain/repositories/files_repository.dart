import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';
import 'package:lazy_engineer/features/file/data/models/filter_request/filter_request.dart';

abstract class FilesRepository {
  Future<List<FileDetail>?> getFilesData();
  Future<bool> download(String fileLink);
  Future<List<FileDetail>?> searchFiles(String query);
  Future<List<FileDetail>?> applyFilter(FilterRequest filterRequest);
  Future<FilesDetailResponse?> getFilesDetailData(String id);
}
