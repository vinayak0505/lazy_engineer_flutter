import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_model.freezed.dart';
part 'download_model.g.dart';

@freezed
class DownloadModel with _$DownloadModel {
  const factory DownloadModel({
    required List<String> notes,
    required List<String> files,
    required List<String> books,
    required List<String> jobs,
    required List<String> papers,
  }) = _DownloadModel;

  factory DownloadModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadModelFromJson(json);
}
