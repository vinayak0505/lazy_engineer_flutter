import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/books/data/datasources/local/books_local_datasource.dart';
import 'package:lazy_engineer/features/books/data/datasources/remote/books_remote_datasource.dart';
import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/books_response.dart';
import 'package:lazy_engineer/features/books/data/models/filter_request.dart/filter_request.dart';
import 'package:lazy_engineer/features/books/domain/repositories/books_repository.dart';

import '../../../../core/models/base_response/base_response.dart';

class BooksRepositoryImpl extends BooksRepository {
  final BooksRemoteDatasource _remoteDataSource = BooksRemoteDatasource();
  final BooksLocalDatasource _localDataSource = BooksLocalDatasource();

  @override
  Future<List<BooksResponse>?> getBooksData() async {
    return bookList;
    // try {
    //   BaseResponse<List<BooksResponse>> listBooks =
    //       await _remoteDataSource.getBooks();
    //   return listBooks.data;
    // } catch (e) {
    //   print(e.toString());
    //   return null;
    // }
  }

  @override
  Future<List<BooksResponse>?> searchBooks(String query) async {
    try {
      BaseResponse<List<BooksResponse>> listBooks =
          await _remoteDataSource.searchBooks(query);
      return listBooks.data;
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
  Future<List<BooksResponse>?> applyFilter(FilterRequest filterRequest) async {
    try {
      return bookList;
      // filterRequest = FilterRequest(
      //   multiOption: removeNullList(filterRequest.multiOption),
      //   textFeild: removeNullList(filterRequest.multiOption),
      //   singleOption: removeNull(filterRequest.singleOption),
      // );
      // BaseResponse<List<BooksResponse>> listBooks =
      //     await _remoteDataSource.applyFilter(filterRequest);
      // return listBooks.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<BooksDetailResponse?> getBooksDetailData(String id) async {
    try {
      BaseResponse<BooksDetailResponse> BooksDetail =
          await _remoteDataSource.getBooksDetail(id);
      return BooksDetail.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
