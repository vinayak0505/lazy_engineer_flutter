import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/papers/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/domain/repositories/papers_repository.dart';

import '../../../../../assets/constants/lists.dart';

part 'papers_state.dart';
part 'papers_cubit.freezed.dart';

class PapersCubit extends Cubit<PapersState> {
  final PapersRepository _repository;
  PapersCubit(this._repository) : super(const PapersState.loading()) {
    getPapers();
  }
  void getPapers() async {
    try {
      List<PaperResponse>? data = await _repository.getPapersData();
      if (data != null) {
        emit(PapersState.success(data));
      } else {
        emit(const PapersState.loading());
      }
    } catch (e) {
      emit(PapersState.failure(e));
    }
  }

  void applyFilter(FilterRequest filterRequest) async {
    try {
      emit(const PapersState.loading());
      List<PaperResponse>? data = await _repository.applyFilter(filterRequest);
      if (data != null) {
        emit(PapersState.success(data));
      } else {
        emit(const PapersState.loading());
      }
    } catch (e) {
      emit(PapersState.failure(e));
    }
  }
}
