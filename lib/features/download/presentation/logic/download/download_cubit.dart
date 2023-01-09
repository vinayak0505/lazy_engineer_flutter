import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lazy_engineer/features/download/data/models/download_model/download_model.dart';
import 'package:lazy_engineer/features/download/data/models/file_model/file_model.dart';
import 'package:open_app_file/open_app_file.dart';

part 'download_state.dart';
part 'download_cubit.freezed.dart';

class DownloadCubit extends Cubit<DownloadState> {
  DownloadCubit() : super(const DownloadState.loading()) {
    getFiles();
  }
  final notes = Hive.box('notes');
  final files = Hive.box('files');
  final books = Hive.box('books');
  final jobs = Hive.box('jobs');
  final papers = Hive.box('papers');

  FileModel converter(Box<dynamic> data) {
    final List<String> valueList = data.values.map((e) {
      final String ele = e.toString();
      return ele;
    }).toList();
    final List<String> keyList = data.keys.map((e) {
      final String ele = e.toString();
      return ele;
    }).toList();
    return FileModel(key: keyList, value: valueList);
  }

  void getFiles() {
    final DownloadModel data = DownloadModel(
      notes: converter(notes),
      files: converter(files),
      books: converter(books),
      jobs: converter(jobs),
      papers: converter(papers),
    );
    emit(DownloadState.success(data));
  }

  Future<bool> downloadFile(String fullPath) async {
    try {
      OpenAppFile.open(fullPath);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
