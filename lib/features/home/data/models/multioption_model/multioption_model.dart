import 'package:freezed_annotation/freezed_annotation.dart';

part 'multioption_model.freezed.dart';
part 'multioption_model.g.dart';

@freezed
class MultioptionModel with _$MultioptionModel {
    const factory MultioptionModel({
        required String title,
        required List<String> body,
    }) = _MultioptionModel;

    factory MultioptionModel.fromJson(Map<String, dynamic> json) => _$MultioptionModelFromJson(json);
}
