import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/notes/data/datasources/remote/notes_client.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/notes_response.dart';
import 'package:lazy_engineer/navigation/dio/token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NotesRemoteDatasource {
  final NotesClient _client;

  factory NotesRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(TokenInterceptor());
    dio.options.headers = {};
    final NotesClient client = NotesClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return NotesRemoteDatasource._(client);
  }

  NotesRemoteDatasource._(this._client);
  Future<BaseResponse<NotesResponse>> getNotes() async {
    final BaseResponse<NotesResponse> response = await _client.getNotes();
    return response;
  }

  Future<BaseResponse<NotesResponse>> searchNotes(String query) async {
    final BaseResponse<NotesResponse> response =
        await _client.searchNotes(query);
    return response;
  }

  Future<BaseResponse<NotesResponse>> applyFilter(
    FilterRequest filterRequest,
  ) async {
    final BaseResponse<NotesResponse> response =
        await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<NotesDetailResponse>> getNotesDetail(String id) async {
    final BaseResponse<NotesDetailResponse> response =
        await _client.getNotesDetail(id);
    return response;
  }
}
