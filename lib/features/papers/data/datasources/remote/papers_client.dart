import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:retrofit/http.dart';
import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import '../../models/filter_request/filter_request.dart';

part 'papers_client.g.dart';

@RestApi()
abstract class PapersClient {
  factory PapersClient(Dio dio, {String baseUrl}) = _PapersClient;

  @GET(AppConfig.papers)
  Future<BaseResponse<List<PaperResponse>>> getPapers();

  @GET(AppConfig.papersSearch)
  Future<BaseResponse<List<PaperResponse>>> searchPapers(
    @Query('query') String query,
  );

  @GET(AppConfig.papersSearch)
  Future<BaseResponse<List<PaperResponse>>> applyFilter(
    @Query('query') FilterRequest query,
  );

  @GET(AppConfig.papersDetail)
  Future<BaseResponse<PaperDetailResponse>> getPapersDetail(
    @Body() String id,
  );
}
