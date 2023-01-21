import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/papers/data/repositories/papers_repository_impl.dart';

part 'papers_detail_cubit.freezed.dart';
part 'papers_detail_state.dart';

class PapersDetailCubit extends Cubit<PapersDetailState> {
  final PapersRepositoryImpl _repository;
  final String id;
  final String fileLink;
  PapersDetailCubit(this._repository, this.id, this.fileLink)
      : super(const PapersDetailState());

  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      print('-------------------$fileLink');
      isDownloaded = await _repository.download(fileLink);
      emit(const PapersDetailState(isDownloaded: true));
    } catch (e) {
      emit(const PapersDetailState(isDownloaded: false));
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
      emit(const PapersDetailState());
    } else {
      rating = true;
      emit(const PapersDetailState(rating: true));
    }
  }

  void dislike() {
    if (rating == false) {
      rating = null;
      emit(const PapersDetailState());
    } else {
      rating = false;
      emit(const PapersDetailState(rating: false));
    }
  }
}
