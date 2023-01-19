import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/datasources/remote/notes_client.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:lazy_engineer/navigation/dio/header.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NotesRemoteDatasource {
  final NotesClient _client;

  factory NotesRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, _) async {
        //   if (error.response?.statusCode == 403 ||
        //       error.response?.statusCode == 401) {
        //     await refreshToken();
        //   }
        },
      ),
    );
    dio.options.headers.addAll(
      {HeaderKeys.tokenHeaderKey: HeaderValues.userToken},
    );
    dio.options.connectTimeout = AppConfig.connectTimeout;
    dio.options.receiveTimeout = AppConfig.receiveTimeout;
    final NotesClient client = NotesClient(
      dio,
      baseUrl: AppConfig.apiBaseUrl,
    );
    return NotesRemoteDatasource._(client);
  }

  NotesRemoteDatasource._(this._client);
  Future<BaseResponse<NoteResponse>> getNotes() async {
    final BaseResponse<NoteResponse> response = await _client.getNotes();
    return response;
  }

  Future<BaseResponse<NoteResponse>> searchNotes(String query) async {
    final BaseResponse<NoteResponse> response =
        await _client.searchNotes(query);
    return response;
  }

  Future<BaseResponse<NoteResponse>> applyFilter(
    FilterRequest filterRequest,
  ) async {
    final BaseResponse<NoteResponse> response =
        await _client.applyFilter(filterRequest);
    return response;
  }

  Future<BaseResponse<NotesDetailResponse>> getNotesDetail(String id) async {
    final BaseResponse<NotesDetailResponse> response =
        await _client.getNotesDetail(id);
    return response;
  }

  Future<void> refreshToken() async {
    // final refreshToken = await _storage.read(key: 'refreshToken');
    // final response = await api
    //     .post('/auth/refresh', data: {'refreshToken': refreshToken});

    // if (response.statusCode == 201) {
    //   // successfully got the new access token
    //   accessToken = response.data;
    // } else {
    //   // refresh token is wrong so log out user.
    //   accessToken = null;
    //   _storage.deleteAll();
    // }
  }
}
