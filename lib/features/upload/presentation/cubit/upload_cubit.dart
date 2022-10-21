import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/upload_data.dart';

part 'upload_state.dart';
part 'upload_cubit.freezed.dart';

class UploadCubit extends Cubit<UploadState> {
  UploadCubit() : super(const UploadState.initial());
  UploadData data = UploadData();

  void uploadNotes({
    required String title,
    required String about,
    required String university,
    required List<String> filterMultiOption,
    required List<String> tags,
  }) {
    data.title = title;
    data.about = about;
    data.university = university;
    data.filterMultiOption = filterMultiOption;
    data.tags = tags;
    emit(UploadState.success(data));
    debugPrint(
        '========${data.title}, ${data.about}, ${data.university}, ${data.tags}');
  }

  void uploadPaper({
    required String title,
    required String about,
    required String subject,
    required List<String> filterMultiOption,
    required List<String> tags,
  }) {
    data.title = title;
    data.about = about;
    data.subject = subject;
    data.filterMultiOption = filterMultiOption;
    data.tags = tags;
    emit(UploadState.success(data));
    debugPrint(
        '========${data.title}, ${data.about}, ${data.subject}, ${data.tags}');
  }

  void uploadBook({
    required String title,
    required String about,
    required String writter,
    required List<String> filterMultiOption,
    required List<String> tags,
  }) {
    data.title = title;
    data.about = about;
    data.writter = writter;
    data.filterMultiOption = filterMultiOption;
    data.tags = tags;
    emit(UploadState.success(data));
    debugPrint(
        '========${data.title}, ${data.about}, ${data.writter}, ${data.tags}');
  }

  void uploadFile({
    required String title,
    required String subject,
    required List<String> filterMultiOption,
    required List<String> tags,
  }) {
    data.title = title;
    data.subject = subject;
    data.filterMultiOption = filterMultiOption;
    data.tags = tags;
    emit(UploadState.success(data));
    debugPrint('========${data.title}, ${data.subject}, ${data.tags}');
  }

  @override
  UploadState? fromJson(Map<String, dynamic> json) {
    if (json.containsKey('data')) {
      print(json['data']);
      data = UploadData.fromJson(json['data']);
      return const UploadInitial();
    }
    return const UploadInitial();
  }

  @override
  Map<String, dynamic>? toJson(UploadState state) {
    return {'data': data.toJson()};
  }
}
