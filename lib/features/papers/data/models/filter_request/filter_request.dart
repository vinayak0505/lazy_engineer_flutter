import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_request.freezed.dart';
part 'filter_request.g.dart';

@freezed
class FilterRequest with _$FilterRequest {
  const factory FilterRequest({
    List<String>? textField,
    List<String>? multiOption,
    String? singleOption,
  }) = _FilterRequest;

  factory FilterRequest.fromJson(Map<String, dynamic> json) =>
      _$FilterRequestFromJson(json);
}
