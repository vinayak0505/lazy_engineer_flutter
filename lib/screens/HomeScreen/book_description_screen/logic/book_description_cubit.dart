// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/bd_modal.dart';
import '../data/repo/bd_repository.dart';

part 'book_description_state.dart';
part 'book_description_cubit.freezed.dart';

class BookDescriptionCubit extends Cubit<BookDescriptionState> {
  final BDRepository _repository;
  BookDescriptionCubit(this._repository)
      : super(const BookDescriptionState.loading()) {
    getData();
  }
  BDModal? data;
  void getData() async {
    emit(const BookDescriptionState.loading());
    try {
      data = await _repository.getInfo();
      if (data != null) {
        debugPrint('=====${data.toString()}');
        debugPrint('=====${data!.about}');
        emit(BookDescriptionState.success(
          data!,
          0,
          List.filled(data!.reviews?.length ?? 0, false),
        ));
      } else {
        emit(const BookDescriptionState.loading());
      }
    } catch (e) {
      emit(BookDescriptionState.failure(e));
    }
  }

  void getRating(int value) {
    data!.userRating = value;
    debugPrint('===== rating = $value');
  }
}
