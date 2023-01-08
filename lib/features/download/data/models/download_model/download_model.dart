import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_model.freezed.dart';
part 'download_model.g.dart';

@freezed
class DownloadModel with _$DownloadModel {
  const factory DownloadModel({
    List<String>? notes,
    List<String>? files,
    List<String>? books,
  }) = _DownloadModel;

  factory DownloadModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadModelFromJson(json);
}
