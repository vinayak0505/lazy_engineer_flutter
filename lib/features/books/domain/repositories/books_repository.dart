import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/books_response.dart';
import 'package:lazy_engineer/features/books/data/models/filter_request.dart/filter_request.dart';

abstract class BooksRepository {
  Future<List<BooksResponse>?> getBooksData();
  Future<List<BooksResponse>?> searchBooks(String query);
  Future<List<BooksResponse>?> applyFilter(FilterRequest filterRequest);
  Future<BooksDetailResponse?> getBooksDetailData(String id);
}
