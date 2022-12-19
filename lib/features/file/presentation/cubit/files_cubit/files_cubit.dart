import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/file/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/files_response.dart';
import 'package:lazy_engineer/features/file/domain/repositories/files_repository.dart';

import '../../../../../assets/constants/lists.dart';

part 'files_state.dart';
part 'files_cubit.freezed.dart';

class FilesCubit extends Cubit<FilesState> {
  final FilesRepository _repository;
  FilesCubit(this._repository) : super(const FilesState.loading()) {
    getFiles();
  }
  void getFiles() async {
    try {
      List<FilesResponse>? data = await _repository.getFilesData();
      if (data != null) {
        emit(FilesState.success(data));
      } else {
        emit(const FilesState.loading());
      }
    } catch (e) {
      emit(FilesState.failure(e));
    }
  }

  void applyFilter(FilterRequest filterRequest) async {
    try {
      emit(const FilesState.loading());
      List<FilesResponse>? data = await _repository.applyFilter(filterRequest);
      if (data != null) {
        emit(FilesState.success(data));
      } else {
        emit(const FilesState.loading());
      }
    } catch (e) {
      emit(FilesState.failure(e));
    }
  }
}
