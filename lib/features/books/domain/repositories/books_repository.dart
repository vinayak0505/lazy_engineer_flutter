import 'package:lazy_engineer/features/books/data/models/books_detail_response/books_detail_response.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';

abstract class BooksRepository {
  Future<List<BookDetail>?> getBooksData();
  Future<bool> download(String fileLink);
  Future<List<BookDetail>?> searchBooks(String query);
  Future<List<BookDetail>?> applyTextFeildFilter(
    List<String> filter,
    List<BookDetail> data,
  );
  Future<BooksDetailResponse?> getBooksDetailData(String id);
}
