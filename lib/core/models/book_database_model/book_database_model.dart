import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_database_model.freezed.dart';
part 'book_database_model.g.dart';

@freezed
class BookDatabaseModel with _$BookDatabaseModel {
  const factory BookDatabaseModel({
    int? id,
    required String title,
    required String subject,
    String? about,
    required int pages,
    int? semister,
    required int bookEdition,
    int? price,
    required int rating,
  }) = _BookDatabaseModel;

  factory BookDatabaseModel.fromJson(Map<String, dynamic> json) =>
      _$BookDatabaseModelFromJson(json);
}
