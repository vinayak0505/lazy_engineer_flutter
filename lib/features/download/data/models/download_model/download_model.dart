import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/download/data/models/file_model/file_model.dart';

part 'download_model.freezed.dart';
part 'download_model.g.dart';

@freezed
class DownloadModel with _$DownloadModel {
  const factory DownloadModel({
    required FileModel notes,
    required FileModel files,
    required FileModel books,
    required FileModel jobs,
    required FileModel papers,
  }) = _DownloadModel;

  factory DownloadModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadModelFromJson(json);
}
