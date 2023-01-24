import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';
part 'file_model.g.dart';

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    required List<String> key,
    required List<String> value,
  }) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
}
