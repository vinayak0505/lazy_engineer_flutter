import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/papers/data/datasources/local/papers_local_datasource.dart';
import 'package:lazy_engineer/features/papers/data/datasources/remote/papers_remote_datasource.dart';
import 'package:lazy_engineer/features/papers/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/domain/repositories/papers_repository.dart';

import '../../../../core/models/base_response/base_response.dart';

class PapersRepositoryImpl extends PapersRepository {
  final PapersRemoteDatasource _remoteDataSource = PapersRemoteDatasource();
  final PapersLocalDatasource _localDataSource = PapersLocalDatasource();

  @override
  Future<List<PaperResponse>?> getPapersData() async {
    return papersList;
    // try {
    //   BaseResponse<List<PaperResponse>> listPapers =
    //       await _remoteDataSource.getPapers();
    //   return listPapers.data;
    // } catch (e) {
    //   print(e.toString());
    //   return null;
    // }
  }

  @override
  Future<List<PaperResponse>?> searchPapers(String query) async {
    try {
      BaseResponse<List<PaperResponse>> listPapers =
          await _remoteDataSource.searchPapers(query);
      return listPapers.data;
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
  Future<List<PaperResponse>?> applyFilter(FilterRequest filterRequest) async {
    try {
      return papersList;
      // filterRequest = FilterRequest(
      //   multiOption: removeNullList(filterRequest.multiOption),
      //   textField: removeNullList(filterRequest.multiOption),
      //   singleOption: removeNull(filterRequest.singleOption),
      // );
      // BaseResponse<List<PaperResponse>> listPapers =
      //     await _remoteDataSource.applyFilter(filterRequest);
      // return listPapers.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<PaperDetailResponse?> getPapersDetailData(String id) async {
    try {
      BaseResponse<PaperDetailResponse> papersDetail =
          await _remoteDataSource.getPapersDetail(id);
      return papersDetail.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
