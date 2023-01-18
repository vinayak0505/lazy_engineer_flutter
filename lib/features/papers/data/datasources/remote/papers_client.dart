import 'package:dio/dio.dart' hide Headers;
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/papers/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:retrofit/http.dart';

part 'papers_client.g.dart';

@RestApi()
abstract class PapersClient {
  factory PapersClient(Dio dio, {String baseUrl}) = _PapersClient;
  @GET(AppConfig.papers)
  Future<BaseResponse<PaperResponse>> getPapers();

  @GET(AppConfig.papersSearch)
  Future<BaseResponse<PaperResponse>> searchPapers(
    @Query('query') String query,
  );

  @GET(AppConfig.papersSearch)
  Future<BaseResponse<PaperResponse>> applyFilter(
    @Query('query') FilterRequest query,
  );

  @GET(AppConfig.papersDetail)
  Future<BaseResponse<PaperDetailResponse>> getPapersDetail(
    @Body() String id,
  );
}
