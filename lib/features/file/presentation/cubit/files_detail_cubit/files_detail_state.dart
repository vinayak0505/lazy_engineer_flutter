part of 'files_detail_cubit.dart';

@freezed
abstract class FilesDetailState with _$FilesDetailState {
  const factory FilesDetailState({
    bool? rating,
    bool? isDownloaded,
  }) = FilesDetail;
}
