// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/domain/repositories/home_repository.dart';

import '../../../data/models/books_response/bd_modal.dart';

part 'books_description_state.dart';
part 'books_description_cubit.freezed.dart';

class BookDescriptionCubit extends Cubit<BooksDescriptionState> {
  final HomeRepository _repository;
  BookDescriptionCubit(this._repository)
      : super(const BooksDescriptionState.loading()) {
    getData();
  }
  BDModal? data;
  void getData() async {
    emit(const BooksDescriptionState.loading());
    // try {
    //   data = await _repository.getBookDetailInfo();
    //   if (data != null) {
    //     emit(BookDescriptionState.success(
    //       data!,
    //       0,
    //       List.filled(data!.reviews?.length ?? 0, false),
    //     ));
    //   } else {
    //     emit(const BookDescriptionState.loading());
    //   }
    // } catch (e) {
    //   emit(BookDescriptionState.failure(e));
    // }
  }

  void getRating(int value) {
    data!.userRating = value;
  }
}
