import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/data/repositories/papers_repository_impl.dart';

part 'papers_cubit.freezed.dart';
part 'papers_state.dart';

class PapersCubit extends Cubit<PapersState> {
  final PapersRepositoryImpl _repository;
  PapersCubit(this._repository) : super(const PapersState.loading()) {
    getPapers();
  }
  List<PaperDetail>? data;
  Future<void> getPapers() async {
    try {
      data = await _repository.getPapersData();
      if (data != null) {
        emit(PapersState.success(data!));
      } else {
        emit(const PapersState.loading());
      }
    } catch (e) {
      emit(PapersState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      //* textfeild
      emit(const PapersState.loading());
      if (filterRequest.textField == null) {
        emit(PapersState.success(data!));
        return;
      }
      final newData = await _repository.applyTextFeildFilter(
        filterRequest.textField!,
        data!,
      );
      emit(PapersState.success(newData ?? data!));
    } catch (e) {
      emit(PapersState.failure(e));
    }
  }
}
