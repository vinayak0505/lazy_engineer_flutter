import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';
import 'package:lazy_engineer/features/file/data/repositories/files_repository_impl.dart';

part 'files_cubit.freezed.dart';
part 'files_state.dart';

class FilesCubit extends Cubit<FilesState> {
  final FilesRepositoryImpl _repository;
  FilesCubit(this._repository) : super(const FilesState.loading()) {
    getFiles();
  }
  List<FileDetail>? data;
  Future<void> getFiles() async {
    try {
      data = await _repository.getFilesData();
      if (data != null) {
        emit(FilesState.success(data!));
      } else {
        emit(const FilesState.loading());
      }
    } catch (e) {
      emit(FilesState.failure(e));
    }
  }

  Future<void> applyFilter(FilterRequest filterRequest) async {
    try {
      //* textfeild
      emit(const FilesState.loading());
      if (filterRequest.textField == null) {
        emit(FilesState.success(data!));
        return;
      }
      final newData = await _repository.applyTextFeildFilter(
        filterRequest.textField!,
        data!,
      );
      emit(FilesState.success(newData ?? data!));
    } catch (e) {
      emit(FilesState.failure(e));
    }
  }
}
