import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lazy_engineer/features/download/data/models/download_model/download_model.dart';
import 'package:open_app_file/open_app_file.dart';
import 'package:path_provider/path_provider.dart';

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

  List<String> converter(Iterable data) {
    return data.map((e) {
      final String ele = e.toString();
      final int start = ele.lastIndexOf('/') + 1;
      return ele.substring(start);
    }).toList();
  }

  void getFiles() {
    final DownloadModel data = DownloadModel(
      notes: converter(notes.values),
      files: converter(files.values),
      books: converter(books.values),
      jobs: converter(jobs.values),
      papers: converter(papers.values),
    );
    emit(DownloadState.success(data));
  }

  Future<bool> downloadFile() async {
    try {
      //download
      final dio = Dio();
      final tempDir = await getTemporaryDirectory();
      final String fullPath = '${tempDir.path}/boo2.pdf';
      final Response response = await dio.download(
        'https://storage.googleapis.com/download/storage/v1/b/lazy-eng1neer.appspot.com/o/section.pdf?generation=1673163490084676&alt=media',
        fullPath,
      );
      //saving file in hive
      notes.add(fullPath);
      //open file
      getFiles();
      OpenAppFile.open(fullPath);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
