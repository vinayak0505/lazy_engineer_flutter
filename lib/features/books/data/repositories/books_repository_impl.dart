import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/books/data/datasources/remote/books_remote_datasource.dart';
import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/books_response.dart';
import 'package:lazy_engineer/features/books/data/models/filter_request.dart/filter_request.dart';
import 'package:lazy_engineer/features/books/domain/repositories/books_repository.dart';

class BooksRepositoryImpl extends BooksRepository {
  final BooksRemoteDatasource _remoteDataSource = BooksRemoteDatasource();
  // final BooksLocalDatasource _localDataSource = BooksLocalDatasource();

  @override
  Future<List<BooksResponse>?> getBooksData() async {
    try {
      final BaseResponse<List<BooksResponse>> listBooks =
          await _remoteDataSource.getBooks();
      return listBooks.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<BooksResponse>?> searchBooks(String query) async {
    try {
      final BaseResponse<List<BooksResponse>> listBooks =
          await _remoteDataSource.searchBooks(query);
      return listBooks.data;
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
  Future<List<BooksResponse>?> applyFilter(FilterRequest filterRequest) async {
    try {
      return bookList;
      // filterRequest = FilterRequest(
      //   multiOption: removeNullList(filterRequest.multiOption),
      //   textField: removeNullList(filterRequest.multiOption),
      //   singleOption: removeNull(filterRequest.singleOption),
      // );
      // BaseResponse<List<BooksResponse>> listBooks =
      //     await _remoteDataSource.applyFilter(filterRequest);
      // return listBooks.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<BooksDetailResponse?> getBooksDetailData(String id) async {
    try {
      final BaseResponse<BooksDetailResponse> booksDetail =
          await _remoteDataSource.getBooksDetail(id);
      return booksDetail.data;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
