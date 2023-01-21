import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/data/models/multioption_model/multioption_model.dart';

part 'filter_request.freezed.dart';
part 'filter_request.g.dart';

@freezed
class FilterRequest with _$FilterRequest {
    const factory FilterRequest({
        List<String>? textField,
        List<MultioptionModel>? multiOption,
        String? singleOption,
    }) = _FilterRequest;

    factory FilterRequest.fromJson(Map<String, dynamic> json) => _$FilterRequestFromJson(json);
}
