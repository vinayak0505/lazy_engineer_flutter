import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';
import 'package:lazy_engineer/features/file/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/file/domain/repositories/files_repository.dart';

part 'files_cubit.freezed.dart';
part 'files_state.dart';

class FilesCubit extends Cubit<FilesState> {
  final FilesRepository _repository;
  FilesCubit(this._repository) : super(const FilesState.loading()) {
    getFiles();
  }
  Future<void> getFiles() async {
    try {
      final List<FileDetail>? data = await _repository.getFilesData();
      data != null
          ? emit(FilesState.success(data))
          : emit(const FilesState.loading());
    } catch (e) {
      emit(FilesState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      emit(const FilesState.loading());
      final List<FileDetail>? data =
          await _repository.applyFilter(filterRequest);
      data != null
          ? emit(FilesState.success(data))
          : emit(const FilesState.loading());
    } catch (e) {
      emit(FilesState.failure(e));
    }
  }
}
