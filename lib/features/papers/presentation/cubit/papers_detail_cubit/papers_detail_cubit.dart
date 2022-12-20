import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/domain/repositories/papers_repository.dart';

import '../../../../../assets/constants/lists.dart';

part 'papers_detail_state.dart';
part 'papers_detail_cubit.freezed.dart';

class PapersDetailCubit extends Cubit<PapersDetailState> {
  final PapersRepository _repository;
  final String id;
  PapersDetailCubit(this._repository, this.id)
      : super(const PapersDetailState.loading()) {
    getPapersDetail();
  }
  void getPapersDetail() async {
    emit(PapersDetailState.success(papersDetail, null));
    //   try {
    //     PaperDetailResponse? data = await _repository.getPapersDetailData(id);
    //     if (data != null) {
    //       emit(PapersDetailState.success(data));
    //     } else {
    //       emit(const PapersDetailState.loading());
    //     }
    //   } catch (e) {
    //     emit(PapersDetailState.failure(e));
    //   }
  }

  void like() {
    emit(PapersDetailState.success(papersDetail, true));
  }

  void dislike() {
    emit(PapersDetailState.success(papersDetail, false));
  }

  void ratingNull() {
    emit(PapersDetailState.success(papersDetail, null));
  }
}
