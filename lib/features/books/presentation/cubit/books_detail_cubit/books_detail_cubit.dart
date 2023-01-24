import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/books/domain/repositories/books_repository.dart';

part 'books_detail_state.dart';
part 'books_detail_cubit.freezed.dart';

class BooksDetailCubit extends Cubit<BooksDetailState> {
  final BooksRepository _repository;
  final String id;
  final String fileLink;
  BooksDetailCubit(this._repository, this.id, this.fileLink)
      : super(const BooksDetailState());

  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await _repository.download(fileLink);
      emit(const BooksDetailState(isDownloaded: true));
    } catch (e) {
      emit(const BooksDetailState(isDownloaded: false));
    }
  }

  void like() {
    if (rating == true) {
      rating = null;
      emit(const BooksDetailState());
    } else {
      rating = true;
      emit(const BooksDetailState(rating: true));
    }
  }

  void dislike() {
    if (rating == false) {
      rating = null;
      emit(const BooksDetailState());
    } else {
      rating = false;
      emit(const BooksDetailState(rating: false));
    }
  }
}
