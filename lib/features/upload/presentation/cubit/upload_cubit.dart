import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_book_request.dart/upload_book_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_files_request.dart/upload_files_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_jobs_request.dart/upload_jobs_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_notes_request/upload_notes_request.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_paper_request/upload_paper_request.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository.dart';
import 'package:open_file/open_file.dart';

part 'upload_state.dart';
part 'upload_cubit.freezed.dart';

class UploadCubit extends Cubit<UploadState> {
  final UploadRepository repository;
  UploadCubit(this.repository) : super(const UploadState.initial());

  PlatformFile? pickedFile;

  void uploadDocument() async {
    emit(const UploadState.documentLoading());
    try {
      final result = await FilePicker.platform.pickFiles(
        allowedExtensions: ['jpg', 'pdf'],
        type: FileType.custom,
      );
      if (result != null) pickedFile = result.files.first;
      emit(UploadState.documentSuccess(pickedFile!));
    } catch (e) {
      emit(UploadState.documentFailure(e));
    }
  }

  void openFile() {
    if (pickedFile != null) OpenFile.open(pickedFile!.path);
  }

  void uploadNotes({
    required String title,
    String? about,
    int? semester,
    String? subject,
    String? unit,
    String? chapter,
    String? topic,
    required String link,
    required List<String> tags,
  }) {
    UploadNotesRequest notesData = UploadNotesRequest(
      title: title,
      about: about,
      semister: semester,
      subject: subject,
      unit: unit,
      chapter: chapter,
      topic: topic,
      link: link,
      tags: tags,
    );
    repository.uplaodNotes(notesData);
    emit(UploadState.success(notesData));
  }

  void uploadPaper({
    required String title,
    String? subject,
    String? semister,
    int? year,
    required String link,
    String? type,
    bool? solved,
    required List<String> tags,
  }) {
    UploadPaperRequest paperData = UploadPaperRequest(
      title: title,
      subject: subject,
      year: year,
      link: link,
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
    int? semister,
    required int bookEdition,
    int? price,
    required List<String> tags,
  }) {
    UploadBookRequest bookData = UploadBookRequest(
      title: title,
      writer: writer,
      subject: subject,
      about: about,
      pages: pages,
      semister: semister,
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
    String? semister,
    required String link,
    required List<String> tags,
  }) {
    UploadFilesRequest fileData = UploadFilesRequest(
      title: title,
      subject: subject,
      college: college,
      semister: semister,
      link: link,
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
