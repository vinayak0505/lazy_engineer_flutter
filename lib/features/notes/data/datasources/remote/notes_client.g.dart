// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _NotesClient implements NotesClient {
  _NotesClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<List<NotesResponse>>> getNotes() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<List<NotesResponse>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/home/notes',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<List<NotesResponse>>.fromJson(
      _result.data!,
      (json) => (json as List<dynamic>)
          .map<NotesResponse>(
              (i) => NotesResponse.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
    return value;
  }

  @override
  Future<BaseResponse<List<NotesResponse>>> searchNotes(query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': query};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<List<NotesResponse>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/home/notes/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<List<NotesResponse>>.fromJson(
      _result.data!,
      (json) => (json as List<dynamic>)
          .map<NotesResponse>(
              (i) => NotesResponse.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
    return value;
  }

  @override
  Future<BaseResponse<List<NotesResponse>>> applyFilter(query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': query.toJson()};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<List<NotesResponse>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/home/notes/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<List<NotesResponse>>.fromJson(
      _result.data!,
      (json) => (json as List<dynamic>)
          .map<NotesResponse>(
              (i) => NotesResponse.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
    return value;
  }

  @override
  Future<BaseResponse<NotesDetailResponse>> getNotesDetail(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = id;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<NotesDetailResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/home/notes/notesDetail',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<NotesDetailResponse>.fromJson(
      _result.data!,
      (json) => NotesDetailResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
