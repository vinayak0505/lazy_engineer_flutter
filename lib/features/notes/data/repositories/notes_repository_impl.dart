import 'package:flutter/material.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/notes/data/datasources/remote/notes_remote_datasource.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:lazy_engineer/features/notes/domain/repositories/notes_repository.dart';

class NotesRepositoryImpl extends NotesRepository {
  final NotesRemoteDatasource _remoteDataSource = NotesRemoteDatasource();
  // final NotesLocalDatasource _localDataSource = NotesLocalDatasource();

  @override
  Future<List<NoteDetail>?> getNotesData() async {
    try {
      final BaseResponse<NoteResponse> listNotes =
          await _remoteDataSource.getNotes();
      return listNotes.data.result;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<NoteDetail>?> searchNotes(String query) async {
    try {
      final BaseResponse<NoteResponse> listNotes =
          await _remoteDataSource.searchNotes(query);
      return listNotes.data.result;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  List<String>? removeNullList(List<String>? list) {
    if (list == null) return null;
    final List<String> ans = [];
    String ele;
    for (ele in list) {
      if (ele != '') ans.add(ele);
    }
    return ans;
  }

  String? removeNull(String? element) {
    if (element == null || element == '') return null;
    return element;
  }

  @override
  Future<List<NoteDetail>?> applyFilter(FilterRequest filterRequest) async {
    try {
      // filterRequest = FilterRequest(
      //   multiOption: removeNullList(filterRequest.multiOption),
      //   // textField: removeNullList(filterRequest.multiOption),
      //   singleOption: removeNull(filterRequest.singleOption),
      // );
      // final BaseResponse<NoteResponse> listNotes =
      //     await _remoteDataSource.applyFilter(filterRequest);
      // return listNotes.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<NotesDetailResponse?> getNotesDetailData(String id) async {
    try {
      final BaseResponse<NotesDetailResponse> notesDetail =
          await _remoteDataSource.getNotesDetail(id);
      return notesDetail.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
