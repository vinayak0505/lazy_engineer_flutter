part of 'papers_detail_cubit.dart';

@freezed
abstract class PapersDetailState with _$PapersDetailState {
  const factory PapersDetailState.loading() = _PapersDetailLoading;
  const factory PapersDetailState.success(PaperDetailResponse data, bool? rating) = _PapersDetailSuccess;
  const factory PapersDetailState.failure(dynamic e) = _PapersDetailFailure;
}
