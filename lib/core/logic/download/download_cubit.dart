import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_state.dart';
part 'download_cubit.freezed.dart';

class DownloadCubit extends Cubit<DownloadState> {
  DownloadCubit() : super(const DownloadState.initial());
  void download(String link) async {
    try {
      emit(const DownloadState.loading());
      await Future.delayed(const Duration(seconds: 2));
      emit(const DownloadState.success());
    } catch (e) {
      emit(DownloadState.failure(e));
    }
  }
}
