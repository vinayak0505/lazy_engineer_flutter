import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/download/data/models/download_model/download_model.dart';
import 'package:lazy_engineer/features/download/data/models/file_model/file_model.dart';

part 'search_download_event.dart';
part 'search_download_bloc.freezed.dart';

class SearchDownloadBloc extends Bloc<SearchDownloadEvent, FileModel> {
  final DownloadModel downloadData;
  SearchDownloadBloc(this.downloadData)
      : super(
          const FileModel(key: [], value: []),
        ) {
    on<SearchDownloadEvent>(
      (event, emit) => _search(event.query, emit),
      // transformer: debounce(const Duration(milliseconds: 1000)),
    );
  }
  Future<void> _search(String query, Emitter<FileModel> emit) async {
    if (query.isEmpty) {
      emit(
        const FileModel(key: [], value: []),
      );
      return;
    }
    try {
      final List<String> newKeyList = [];
      final List<String> newValueList = [];
      final List<FileModel> allData = [
        downloadData.notes,
        downloadData.files,
        downloadData.papers,
        downloadData.books,
        downloadData.jobs,
      ];
      for (final sub in allData) {
        final keyList = sub.key;
        final valueList = sub.value;
        for (int i = 0; i < keyList.length; i++) {
          final value = valueList[i].toLowerCase();
          if (value.contains(query.trim().toLowerCase())) {
            newKeyList.add(keyList[i]);
            newValueList.add(valueList[i]);
          }
        }
      }
      emit(FileModel(key: newKeyList, value: newValueList));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
