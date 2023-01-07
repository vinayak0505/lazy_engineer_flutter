part of 'papers_cubit.dart';

@freezed
class PapersState with _$PapersState {
  const factory PapersState.loading() = _PapersLoading;
  const factory PapersState.success(List<PaperDetail> data) = _PapersSuccess;
  const factory PapersState.failure(dynamic e) = _PapersFailure;
}
