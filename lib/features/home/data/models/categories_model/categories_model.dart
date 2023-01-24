import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
    const factory CategoriesModel({
        required String title,
        String? image,
        required String description,
    }) = _CategoriesModel;

    factory CategoriesModel.fromJson(Map<String, dynamic> json) => _$CategoriesModelFromJson(json);
}
