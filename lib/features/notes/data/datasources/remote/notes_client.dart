import 'package:dio/dio.dart' hide Headers;
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/notes_response.dart';
import 'package:retrofit/http.dart';
import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import '../../../../../navigation/dio/token_interceptor.dart';
import '../../models/filter_request/filter_request.dart';

part 'notes_client.g.dart';

@RestApi()
abstract class NotesClient {
  factory NotesClient(Dio dio, {String baseUrl}) = _NotesClient;
  @GET(AppConfig.notes)
  Future<BaseResponse<NotesResponse>> getNotes(
      [@Header(HeaderKeys.tokenHeaderKey)
          String token = HeaderValues.tempToken]);

  @GET(AppConfig.notesSearch)
  Future<BaseResponse<NotesResponse>> searchNotes(
    @Query('query') String query,
  );

  @GET(AppConfig.notesSearch)
  Future<BaseResponse<NotesResponse>> applyFilter(
    @Query('query') FilterRequest query,
  );

  @GET(AppConfig.notesDetail)
  Future<BaseResponse<NotesDetailResponse>> getNotesDetail(@Body() String id,
      [@Header(HeaderKeys.tokenHeaderKey) String token =
          HeaderValues.tempToken]);
}
