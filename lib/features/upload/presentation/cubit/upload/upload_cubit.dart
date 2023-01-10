import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_models.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository_impl.dart';
import 'package:open_app_file/open_app_file.dart';

part 'upload_cubit.freezed.dart';
part 'upload_state.dart';

class UploadCubit extends Cubit<UploadState> {
  final UploadRepositoryImpl repository;
  UploadCubit(this.repository) : super(const UploadState.initial());

  PlatformFile? pickedFile;
  MultipartFile? file;

  Future<void> uploadDocument() async {
    emit(const UploadState.documentLoading());
    try {
      final result = await FilePicker.platform.pickFiles(
        allowedExtensions: ['png', 'jpg', 'pdf'],
        type: FileType.custom,
      );
      if (result != null) {
        pickedFile = result.files.first;
        file = await getMultiPath(pickedFile);
        emit(UploadState.documentSuccess(pickedFile!));
      } else {
        emit(const UploadState.initial());
      }
    } catch (e) {
      emit(UploadState.documentFailure(e));
    }
  }

  void openFile() {
    if (pickedFile != null) OpenAppFile.open(pickedFile!.path!);
  }

  Future<MultipartFile?> getMultiPath(PlatformFile? file) async {
    try {
      return MultipartFile.fromFile(pickedFile!.path!);
    } catch (e) {
      return null;
    }
  }

  /// -------------------NOTES-----------------------
  void uploadNotes(UploadNotesRequest notesData) {
    repository.uplaodNotes(notesData.copyWith(file: file));
    emit(const UploadState.success());
  }

  /// -------------------PAPERS-----------------------
  void uploadPaper(UploadPaperRequest paperData) {
    repository.uplaodPaper(paperData.copyWith(file: file));
    emit(const UploadState.success());
  }

  /// -------------------BOOKS-----------------------
  void uploadBook(UploadBookRequest bookData) {
    repository.uplaodBook(bookData.copyWith(file: file));
    emit(const UploadState.success());
  }

  /// -------------------FILES-----------------------
  void uploadFile(UploadFilesRequest fileData) {
    repository.uplaodFiles(fileData.copyWith(file: file));
    emit(const UploadState.success());
  }

  /// -------------------JOBS-----------------------
  void uploadJobs(UploadJobsRequest jobsData) {
    repository.uplaodJobs(jobsData.copyWith(file: file));
    emit(const UploadState.success());
  }
}
