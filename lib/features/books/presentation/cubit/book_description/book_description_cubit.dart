// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/domain/repositories/home_repository.dart';

import '../../../data/models/bd_modal.dart';

part 'book_description_state.dart';
part 'book_description_cubit.freezed.dart';

class BookDescriptionCubit extends Cubit<BookDescriptionState> {
  final HomeRepository _repository;
  BookDescriptionCubit(this._repository)
      : super(const BookDescriptionState.loading()) {
    getData();
  }
  BDModal? data;
  void getData() async {
    emit(const BookDescriptionState.loading());
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
