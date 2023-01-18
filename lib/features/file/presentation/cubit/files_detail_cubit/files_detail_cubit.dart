import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/file/domain/repositories/files_repository.dart';

part 'files_detail_state.dart';
part 'files_detail_cubit.freezed.dart';

class FilesDetailCubit extends Cubit<FilesDetailState> {
  final FilesRepository _repository;
  final String id;
  final String fileLink;
  FilesDetailCubit(this._repository, this.id, this.fileLink)
      : super(const FilesDetailState());

  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await _repository.download(fileLink);
      emit(const FilesDetailState(isDownloaded: true));
    } catch (e) {
      emit(const FilesDetailState(isDownloaded: false));
    }
  }

  void like() {
    if (rating == true) {
      rating = null;
      emit(const FilesDetailState());
    } else {
      rating = true;
      emit(const FilesDetailState(rating: true));
    }
  }

  void dislike() {
    if (rating == false) {
      rating = null;
      emit(const FilesDetailState());
    } else {
      rating = false;
      emit(const FilesDetailState(rating: false));
    }
  }
}
