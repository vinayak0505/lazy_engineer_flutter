import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/files_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:retrofit/http.dart';
import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import '../../models/filter_request/filter_request.dart';
part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String baseUrl}) = _FilesClient;

  @GET(AppConfig.files)
  Future<BaseResponse<List<FilesResponse>>> getFiles();

  @GET(AppConfig.filesSearch)
  Future<BaseResponse<List<FilesResponse>>> searchFiles(
    @Query('query') String query,
  );

  @GET(AppConfig.filesSearch)
  Future<BaseResponse<List<FilesResponse>>> applyFilter(
    @Query('query') FilterRequest query,
  );

  @GET(AppConfig.filesDetail)
  Future<BaseResponse<FilesDetailResponse>> getFilesDetail(
    @Body() String id,
  );
}
