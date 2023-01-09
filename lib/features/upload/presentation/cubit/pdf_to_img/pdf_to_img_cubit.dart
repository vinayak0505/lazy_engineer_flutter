import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_render/pdf_render.dart';

part 'pdf_to_img_state.dart';
part 'pdf_to_img_cubit.freezed.dart';

class PdfToImgCubit extends Cubit<PdfToImgState> {
  PlatformFile file;
  PdfToImgCubit(this.file) : super(const PdfToImgState.loading()) {
    getImage();
  }

  Future getImage() async {
    try {
      print('====start ${file.path}');
      final PdfDocument doc = await PdfDocument.openAsset('assets/abc.pdf');
      print('1=====$doc');

      // Get the number of pages in the PDF file
      // final int pageCount = doc.pageCount;

      // The first page is 1
      final PdfPage page = await doc.getPage(1);

      // For the render function's return, see explanation below
      final PdfPageImage pageImage = await page.render();

      final image = await pageImage.createImageDetached();

      final pngData = await image.toByteData(format: ImageByteFormat.png);

      emit(PdfToImgState.success(pngData!));
    } catch (e) {
      PdfToImgState.failure(e.toString());
    }
  }
}
