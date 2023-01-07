import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/papers/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/domain/repositories/papers_repository.dart';

part 'papers_cubit.freezed.dart';
part 'papers_state.dart';

class PapersCubit extends Cubit<PapersState> {
  final PapersRepository _repository;
  PapersCubit(this._repository) : super(const PapersState.loading()) {
    getPapers();
  }
  Future<void> getPapers() async {
    try {
      final List<PaperDetail>? data = await _repository.getPapersData();
      if (data != null) {
        emit(PapersState.success(data));
      } else {
        emit(const PapersState.loading());
      }
    } catch (e) {
      emit(PapersState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      emit(const PapersState.loading());
      final List<PaperDetail>? data =
          await _repository.applyFilter(filterRequest);
      data != null
          ? emit(PapersState.success(data))
          : emit(const PapersState.loading());
    } catch (e) {
      emit(PapersState.failure(e));
    }
  }
}
