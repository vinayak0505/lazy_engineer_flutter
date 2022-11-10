import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/notes_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import 'notes_client.dart';

class NotesRemoteDatasource {
  final NotesClient _client;

  NotesRemoteDatasource._(this._client);

  factory NotesRemoteDatasource() {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(responseBody: true));
    dio.options.headers = {};
    NotesClient client = NotesClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return NotesRemoteDatasource._(client);
  }
  Future<BaseResponse<List<NotesResponse>>> getNotes() async {
    BaseResponse<List<NotesResponse>> response = await _client.getNotes();
    return response;
  }

  Future<BaseResponse<List<NotesResponse>>> searchNotes(String query) async {
    BaseResponse<List<NotesResponse>> response = await _client.searchNotes(query);
    return response;
  }

  Future<BaseResponse<List<NotesResponse>>> applyFilter(FilterRequest filterRequest) async {
    BaseResponse<List<NotesResponse>> response = await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<NotesDetailResponse>> getNotesDetail(String id) async {
    BaseResponse<NotesDetailResponse> response = await _client.getNotesDetail(id);
    return response;
  }
}
