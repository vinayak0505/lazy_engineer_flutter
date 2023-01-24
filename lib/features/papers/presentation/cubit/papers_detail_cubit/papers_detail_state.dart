part of 'papers_detail_cubit.dart';

@freezed
abstract class PapersDetailState with _$PapersDetailState {
  const factory PapersDetailState(
    {bool? rating,
    bool? isDownloaded,}
  ) = PapersDetail;
}
