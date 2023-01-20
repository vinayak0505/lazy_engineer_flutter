import 'package:flutter/material.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/papers/data/datasources/local/papers_local_datasource.dart';
import 'package:lazy_engineer/features/papers/data/datasources/remote/papers_remote_datasource.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/domain/repositories/papers_repository.dart';

class PapersRepositoryImpl extends PapersRepository {
  final PapersRemoteDatasource _remoteDataSource = PapersRemoteDatasource();
  final PapersLocalDatasource _localDataSource = PapersLocalDatasource();

  @override
  Future<List<PaperDetail>?> getPapersData() async {
    try {
      final BaseResponse<PaperResponse> listPapers =
          await _remoteDataSource.getPapers();
      return listPapers.data.result;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<PaperDetail>?> searchPapers(String query) async {
    try {
      final BaseResponse<PaperResponse> listPapers =
          await _remoteDataSource.searchPapers(query);
      return listPapers.data.result;
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
  Future<List<PaperDetail>?> applyTextFeildFilter(
    List<String> filter,
    List<PaperDetail> data,
  ) async {
    try {
      final List<PaperDetail> newData = [];
      for (final paper in data) {
        final check = filterCheck(
          elementList: [
            paper.subject,
            paper.unit,
            paper.chapter,
            paper.topic,
          ],
          filterList: filter,
        );
        if (check) newData.add(paper);
      }
      return newData;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<PaperDetailResponse?> getPapersDetailData(String id) async {
    try {
      final BaseResponse<PaperDetailResponse> papersDetail =
          await _remoteDataSource.getPapersDetail(id);
      return papersDetail.data;
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
      await _localDataSource.downloadPapers(name, fileLink);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
