part of 'pdf_to_img_cubit.dart';

@freezed
class PdfToImgState with _$PdfToImgState {
  const factory PdfToImgState.loading() = PdfToImgLoading;
  const factory PdfToImgState.failure(dynamic e) = PdfToImgFailure;
  const factory PdfToImgState.success(File data) = PdfToImgSuccess;
}
