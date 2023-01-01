import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/notes/data/datasources/local/notes_local_datasource.dart';
import 'package:lazy_engineer/features/notes/data/datasources/remote/notes_remote_datasource.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/notes_response.dart';
import 'package:lazy_engineer/features/notes/domain/repositories/notes_repository.dart';

import '../../../../core/models/base_response/base_response.dart';

class NotesRepositoryImpl extends NotesRepository {
  final NotesRemoteDatasource _remoteDataSource = NotesRemoteDatasource();
  final NotesLocalDatasource _localDataSource = NotesLocalDatasource();

  @override
  Future<NotesResponse?> getNotesData() async {
    try {
      BaseResponse<NotesResponse> listNotes =
          await _remoteDataSource.getNotes();
      return listNotes.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<NotesResponse?> searchNotes(String query) async {
    try {
      BaseResponse<NotesResponse> listNotes =
          await _remoteDataSource.searchNotes(query);
      return listNotes.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  List<String>? removeNullList(List<String>? list) {
    if (list == null) return null;
    List<String> ans = [];
    for (String ele in list) {
      if (ele != '') ans.add(ele);
    }
    return ans;
  }

  String? removeNull(String? element) {
    if (element == null || element == '') return null;
    return element;
  }

  @override
  Future<NotesResponse?> applyFilter(FilterRequest filterRequest) async {
    try {
      filterRequest = FilterRequest(
        multiOption: removeNullList(filterRequest.multiOption),
        // textField: removeNullList(filterRequest.multiOption),
        singleOption: removeNull(filterRequest.singleOption),
      );
      BaseResponse<NotesResponse> listNotes =
          await _remoteDataSource.applyFilter(filterRequest);
      return listNotes.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<NotesDetailResponse?> getNotesDetailData(String id) async {
    try {
      BaseResponse<NotesDetailResponse> notesDetail =
          await _remoteDataSource.getNotesDetail(id);
      return notesDetail.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
