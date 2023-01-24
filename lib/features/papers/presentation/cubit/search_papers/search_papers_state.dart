part of 'search_papers_bloc.dart';

@freezed
class SearchPapersState with _$SearchPapersState {
  const factory SearchPapersState.initial() = _SearchPapersInitial;
  const factory SearchPapersState.loading() = _SearchPapersLoading;
  const factory SearchPapersState.failure(dynamic e) = _SearchPapersFailure;
  const factory SearchPapersState.success(List<PaperDetail> data) =
      _SearchPapersSuccess;
}
