import 'package:flutter/material.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/file/data/datasources/local/files_local_database.dart';
import 'package:lazy_engineer/features/file/data/datasources/remote/files_remote_datasource.dart';
import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';
import 'package:lazy_engineer/features/file/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/file/domain/repositories/files_repository.dart';

class FilesRepositoryImpl extends FilesRepository {
  final FilesRemoteDatasource _remoteDataSource = FilesRemoteDatasource();
  final FilesLocalDatasource _localDataSource = FilesLocalDatasource();

  @override
  Future<List<FileDetail>?> getFilesData() async {
    try {
      final BaseResponse<FileResponse> listNotes =
          await _remoteDataSource.getFiles();
      return listNotes.data.result;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<FileDetail>?> searchFiles(String query) async {
    try {
      final BaseResponse<FileResponse> listFiles =
          await _remoteDataSource.searchFiles(query);
      return listFiles.data.result;
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
  Future<List<FileDetail>?> applyFilter(FilterRequest filterRequest) async {
    // return practicalFileList;
    // try {
    //   filterRequest = FilterRequest(
    //     multiOption: removeNullList(filterRequest.multiOption),
    //     textField: removeNullList(filterRequest.multiOption),
    //     singleOption: removeNull(filterRequest.singleOption),
    //   );
    //   final BaseResponse<FileResponse> listNotes =
    //       await _remoteDataSource.applyFilter(filterRequest);
    //   return listNotes.data;
    // } catch (e) {
    //   debugPrint(e.toString());
    //   return null;
    // }
  }

  @override
  Future<FilesDetailResponse?> getFilesDetailData(String id) async {
    try {
      final BaseResponse<FilesDetailResponse> filesDetail =
          await _remoteDataSource.getFilesDetail(id);
      return filesDetail.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<bool> download(String fileLink) async {
    try {
      final int start = fileLink.indexOf('/o/') + 3;
      final int end = fileLink.indexOf('?generation');
      final String name = fileLink.substring(start, end);
      await _localDataSource.downloadFiles(name, fileLink);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
