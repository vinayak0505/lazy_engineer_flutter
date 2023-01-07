import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/books_response.dart';
import 'package:lazy_engineer/features/books/data/models/filter_request.dart/filter_request.dart';
import 'package:lazy_engineer/features/books/domain/repositories/books_repository.dart';

part 'books_state.dart';
part 'books_cubit.freezed.dart';

class BooksCubit extends Cubit<BooksState> {
  final BooksRepository _repository;
  BooksCubit(this._repository) : super(const BooksState.loading()) {
    getBooks();
  }
  Future<void> getBooks() async {
    try {
      final List<BooksResponse>? data = await _repository.getBooksData();
      data != null
          ? emit(BooksState.success(data))
          : emit(const BooksState.loading());
    } catch (e) {
      emit(BooksState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      emit(const BooksState.loading());
      final List<BooksResponse>? data =
          await _repository.applyFilter(filterRequest);
      data != null
          ? emit(BooksState.success(data))
          : emit(const BooksState.loading());
    } catch (e) {
      emit(BooksState.failure(e));
    }
  }
}
