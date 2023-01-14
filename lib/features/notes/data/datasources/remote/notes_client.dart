import 'package:dio/dio.dart' hide Headers;
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:retrofit/http.dart';

part 'notes_client.g.dart';

@RestApi()
abstract class NotesClient {
  factory NotesClient(Dio dio, {String baseUrl}) = _NotesClient;
  @GET(AppConfig.notes)
  Future<BaseResponse<NoteResponse>> getNotes();

  @GET(AppConfig.notesSearch)
  Future<BaseResponse<NoteResponse>> searchNotes(
    @Query('query') String query,
  );

  @GET(AppConfig.notesSearch)
  Future<BaseResponse<NoteResponse>> applyFilter(
    @Query('query') FilterRequest query,
  );

  @GET(AppConfig.notesDetail)
  Future<BaseResponse<NotesDetailResponse>> getNotesDetail(
    @Body() String id,
  );
}
