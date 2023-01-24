import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/features/books/data/repositories/books_repository_impl.dart';

part 'books_state.dart';
part 'books_cubit.freezed.dart';

class BooksCubit extends Cubit<BooksState> {
  final BooksRepositoryImpl _repository;
  BooksCubit(this._repository) : super(const BooksState.loading()) {
    getBooks();
  }
  List<BookDetail>? data;
  Future<void> getBooks() async {
    try {
      data = await _repository.getBooksData();
      if (data != null) {
        emit(BooksState.success(data!));
      } else {
        emit(const BooksState.loading());
      }
    } catch (e) {
      emit(BooksState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      //* textfeild
      emit(const BooksState.loading());
      if (filterRequest.textField == null) {
        emit(BooksState.success(data!));
        return;
      }
      final newData = await _repository.applyTextFeildFilter(
        filterRequest.textField!,
        data!,
      );
      emit(BooksState.success(newData ?? data!));
    } catch (e) {
      emit(BooksState.failure(e));
    }
  }
}
