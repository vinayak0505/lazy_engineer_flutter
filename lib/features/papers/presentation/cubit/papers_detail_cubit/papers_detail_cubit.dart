import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/papers/domain/repositories/papers_repository.dart';

part 'papers_detail_cubit.freezed.dart';
part 'papers_detail_state.dart';

class PapersDetailCubit extends Cubit<PapersDetailState> {
  final PapersRepository _repository;
  final String id;
  final String fileLink;
  PapersDetailCubit(this._repository, this.id, this.fileLink)
      : super(const PapersDetailState(null, null));

  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await _repository.download(fileLink);
      emit(const PapersDetailState(null, true));
    } catch (e) {
      emit(const PapersDetailState(null, false));
    }
  }

  Future<void> getPapersDetail() async {
    // emit(PapersDetailState.success([], null));
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
    if (rating == true) {
      rating = null;
      emit(const PapersDetailState(null, null));
    } else {
      rating = true;
      emit(const PapersDetailState(true, null));
    }
  }

  void dislike() {
    if (rating == false) {
      rating = null;
      emit(const PapersDetailState(null, null));
    } else {
      rating = false;
      emit(const PapersDetailState(false, null));
    }
  }
}
