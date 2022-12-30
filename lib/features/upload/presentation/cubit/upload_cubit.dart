import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository_impl.dart';
import 'package:open_app_file/open_app_file.dart';
import '../../data/models/upload_models.dart';

part 'upload_state.dart';
part 'upload_cubit.freezed.dart';

class UploadCubit extends Cubit<UploadState> {
  final UploadRepositoryImpl repository;
  UploadCubit(this.repository) : super(const UploadState.initial());

  PlatformFile? pickedFile;
  MultipartFile? file;

  void uploadDocument() async {
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
    emit(UploadState.success(notesData));
  }

  void uploadPaper({
    required String title,
    String? subject,
    String? semester,
    int? year,
    String? type,
    bool? solved,
    required List<String> tags,
  }) {
    UploadPaperRequest paperData = UploadPaperRequest(
      title: title,
      subject: subject,
      year: year,
      link: getMultiPath(pickedFile),
      type: type,
      solved: solved,
      tags: tags,
    );
    repository.uplaodPaper(paperData);
    emit(UploadState.success(paperData));
  }

  void uploadBook({
    required String title,
    required List<String> writer,
    required String subject,
    String? about,
    required int pages,
    int? semester,
    required int bookEdition,
    int? price,
    required List<String> tags,
  }) {
    UploadBookRequest bookData = UploadBookRequest(
      title: title,
      link: getMultiPath(pickedFile),
      writer: writer,
      subject: subject,
      about: about,
      pages: pages,
      semester: semester,
      bookEdition: bookEdition,
      price: price,
      tags: tags,
    );
    repository.uplaodBook(bookData);
    emit(UploadState.success(bookData));
  }

  void uploadFile({
    required String title,
    String? subject,
    String? college,
    String? semester,
    required List<String> tags,
  }) {
    UploadFilesRequest fileData = UploadFilesRequest(
      title: title,
      subject: subject,
      college: college,
      semester: semester,
      link: getMultiPath(pickedFile),
      tags: tags,
    );
    repository.uplaodFiles(fileData);
    emit(UploadState.success(fileData));
  }

  void uploadJobs({
    required String title,
    required String profile,
    required String company,
    required String aboutCompany,
    required String location,
    required String jobType,
    required String experienceLevel,
    required String datePosted,
    required List<String> skillsNeeded,
    required int expectedSalary,
    required int numOfEmployees,
    required List<String> companyPhoto,
  }) {
    UploadJobsRequest jobsData = UploadJobsRequest(
      title: title,
      profile: profile,
      company: company,
      aboutCompany: aboutCompany,
      location: location,
      jobType: jobType,
      experienceLevel: experienceLevel,
      datePosted: datePosted,
      skillsNeeded: skillsNeeded,
      expectedSalary: expectedSalary,
      numOfEmployees: numOfEmployees,
      companyPhoto: companyPhoto,
    );
    repository.uplaodJobs(jobsData);
    emit(UploadState.success(jobsData));
  }
}
