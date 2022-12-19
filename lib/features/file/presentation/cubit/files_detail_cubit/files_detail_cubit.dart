import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/file/domain/repositories/files_repository.dart';

part 'files_detail_state.dart';
part 'files_detail_cubit.freezed.dart';

class FilesDetailCubit extends Cubit<FilesDetailState> {
  final FilesRepository _repository;
  final String id;
  FilesDetailCubit(this._repository, this.id)
      : super(const FilesDetailState.loading()) {
    getFilesDetail();
  }
  void getFilesDetail() async {
    emit(FilesDetailState.success(filesDetail, null));
    //   try {
    //     FilesDetailResponse? data = await _repository.getFilesDetailData(id);
    //     if (data != null) {
    //       emit(FilesDetailState.success(data));
    //     } else {
    //       emit(const FilesDetailState.loading());
    //     }
    //   } catch (e) {
    //     emit(FilesDetailState.failure(e));
    //   }
  }

  void like() {
    emit(FilesDetailState.success(filesDetail, true));
  }

  void dislike() {
    emit(FilesDetailState.success(filesDetail, false));
  }

  void ratingNull() {
    emit(FilesDetailState.success(filesDetail, null));
  }
}
