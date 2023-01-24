import 'package:flutter/material.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/books/data/datasources/local/books_local_datasource.dart';
import 'package:lazy_engineer/features/books/data/datasources/remote/books_remote_datasource.dart';
import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/features/books/domain/repositories/books_repository.dart';

class BooksRepositoryImpl extends BooksRepository {
  final BooksRemoteDatasource _remoteDataSource = BooksRemoteDatasource();
  final BooksLocalDatasource _localDataSource = BooksLocalDatasource();

  @override
  Future<List<BookDetail>?> getBooksData() async {
    try {
      final BaseResponse<BookResponse> listBooks =
          await _remoteDataSource.getBooks();
      return listBooks.data.result;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<BookDetail>?> searchBooks(String query) async {
    try {
      final BaseResponse<BookResponse> listBooks =
          await _remoteDataSource.searchBooks(query);
      return listBooks.data.result;
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

  bool writerCheck(String filter, List<String>? list) {
    if (list != null) {
      for (int i = 0; i < list.length; i++) {
        final filterString = filter.trim().toLowerCase();
        final writer = list[i].trim().toLowerCase();
        if (filterString == '' || writer.contains(filterString)) return true;
      }
      return false;
    } else {
      return filter.trim() == '';
    }
  }

  @override
  Future<List<BookDetail>?> applyTextFeildFilter(
    List<String> filter,
    List<BookDetail> data,
  ) async {
    try {
      final List<BookDetail> newData = [];
      for (final book in data) {
        final bool check = writerCheck(filter[0], book.writer);
        if (check) newData.add(book);
      }
      return newData;
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

  @override
  Future<bool> download(String fileLink) async {
    try {
      final int start = fileLink.indexOf('/o/') + 3;
      final int end = fileLink.indexOf('?alt');
      final String name = fileLink.substring(start, end);
      await _localDataSource.downloadBooks(name, fileLink);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
