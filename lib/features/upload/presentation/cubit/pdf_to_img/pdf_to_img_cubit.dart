import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_image_renderer/pdf_image_renderer.dart';

part 'pdf_to_img_state.dart';
part 'pdf_to_img_cubit.freezed.dart';

class PdfToImgCubit extends Cubit<PdfToImgState> {
  PlatformFile file;
  PdfToImgCubit(this.file) : super(const PdfToImgState.loading()) {
    renderPdfImage();
  }

  Future<void> renderPdfImage() async {
    try {
      // Initialize the renderer
      final pdf = PdfImageRendererPdf(path: file.path!);

      // open the pdf document
      await pdf.open();
      await pdf.openPage(pageIndex: 0);

      // get the render size after the page is loaded
      final size = await pdf.getPageSize(pageIndex: 0);

      // get the actual image of the page
      final img = await pdf.renderPage(
        x: 0,
        y: 0,
        width: size.width,
        height: size.height,
        scale: 1,
      );

      // close the page again
      await pdf.closePage(pageIndex: 0);
      pdf.close();
      // Unit8List ->  File 
      final tempDir = await getTemporaryDirectory();
      final File fileImage = await File('${tempDir.path}/image.png').create();
      fileImage.writeAsBytesSync(img!);

      emit(PdfToImgState.success(fileImage));
    } catch (e) {
      emit(PdfToImgState.failure(e));
    }
  }
}
