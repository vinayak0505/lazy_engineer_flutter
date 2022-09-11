import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../data/upload_data.dart';

part 'upload_state.dart';
part 'upload_cubit.freezed.dart';

class UploadCubit extends HydratedCubit<UploadState> {
  UploadCubit() : super(const UploadState.initial());
  UploadData data = UploadData();

  void uploadNotes({
    required String title,
    required String about,
    required String university,
    required List<String> filterSingleOption,
    required List<String> filterMultiOption,
    required List<String> tags,
  }) {
    data.title = title;
    data.about = about;
    data.university = university;
    data.filterSingleOption = filterSingleOption;
    data.filterMultiOption = filterMultiOption;
    data.tags = tags;

    // pageSetter = 1;
    // emit(CBSState.form(_pageNumber, data));
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
