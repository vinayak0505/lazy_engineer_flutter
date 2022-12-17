import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/files_response.dart';

import '../../data/models/filter_request/filter_request.dart';

abstract class FilesRepository {
  Future<List<FilesResponse>?> getFilesData();
  Future<List<FilesResponse>?> searchFiles(String query);
  Future<List<FilesResponse>?> applyFilter(FilterRequest filterRequest);
  Future<FilesDetailResponse?> getFilesDetailData(String id);
}
