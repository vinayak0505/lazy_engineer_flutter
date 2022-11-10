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
  Future<List<NotesResponse>?> getNotesData() async {
    try {
      BaseResponse<List<NotesResponse>> listNotes =
          await _remoteDataSource.getNotes();
      return listNotes.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<List<NotesResponse>?> searchNotes(String query) async {
    try {
      BaseResponse<List<NotesResponse>> listNotes =
          await _remoteDataSource.searchNotes(query);
      if (listNotes.data != null) {
        return listNotes.data;
      } else {
        throw listNotes.status;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  List<String>? removeNull(List<String>? list) {
    if (list == null) return null;
    List<String> ans = [];
    for (String ele in list) {
      if (ele != '') ans.add(ele);
    }
    return ans;
  }

  @override
  Future<List<NotesResponse>?> applyFilter(FilterRequest filterRequest) async {
    try {
      filterRequest = FilterRequest(
        multiOption: removeNull(filterRequest.multiOption),
        textFeild: removeNull(filterRequest.multiOption),
        singleOption: filterRequest.singleOption,
      );
      BaseResponse<List<NotesResponse>> listNotes =
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
