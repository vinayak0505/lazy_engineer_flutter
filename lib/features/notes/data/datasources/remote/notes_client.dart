import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/notes_response.dart';
import 'package:retrofit/http.dart';
import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import '../../models/filter_request/filter_request.dart';

part 'notes_client.g.dart';

@RestApi()
abstract class NotesClient {
  factory NotesClient(Dio dio, {String baseUrl}) = _NotesClient;

  @GET(AppConfig.notes)
  Future<BaseResponse<List<NotesResponse>>> getNotes();

  @GET(AppConfig.notesSearch)
  Future<BaseResponse<List<NotesResponse>>> searchNotes(
    @Query('query') String query,
  );

  @GET(AppConfig.notesSearch)
  Future<BaseResponse<List<NotesResponse>>> applyFilter(
    @Query('query') FilterRequest query,
  );

  @GET(AppConfig.notesDetail)
  Future<BaseResponse<NotesDetailResponse>> getNotesDetail(
    @Body() String id,
  );
}
