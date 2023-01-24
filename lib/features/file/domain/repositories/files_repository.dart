import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';

abstract class FilesRepository {
  Future<List<FileDetail>?> getFilesData();
  Future<bool> download(String fileLink);
  Future<List<FileDetail>?> searchFiles(String query);
  Future<List<FileDetail>?> applyTextFeildFilter(
    List<String> filter,
    List<FileDetail> data,
  );
  Future<FilesDetailResponse?> getFilesDetailData(String id);
}
