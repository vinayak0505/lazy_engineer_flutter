import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository_impl.dart';
import 'package:lazy_engineer/features/upload/presentation/cubit/pdf_to_img/pdf_to_img_cubit.dart';
import 'package:lazy_engineer/features/upload/presentation/cubit/upload/upload_cubit.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/success_page.dart';
import 'package:lazy_engineer/helper/input_validation.dart';

class UploadScreenWidget extends StatelessWidget with InputValidationMixin {
  const UploadScreenWidget({
    super.key,
    required this.onPressed,
    required this.title,
    required this.body,
    this.buttonText = upload,
    this.buttonWidth = 100,
  });
  final void Function(UploadCubit cubit, File? image) onPressed;
  final String title;
  final String buttonText;
  final double buttonWidth;
  final List<Widget> body;

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    final ThemeData theme = Theme.of(context);
    File? documentImage;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title,
            style: theme.textTheme.headline5,
          ),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const CustomIcon(
              AppIcons.backArrow,
              margin: EdgeInsets.only(left: 16),
            ),
          ),
        ),
        body: BlocProvider(
          create: (context) => UploadCubit(UploadRepositoryImpl()),
          child: BlocBuilder<UploadCubit, UploadState>(
            builder: (context, state) {
              final cubit = context.read<UploadCubit>();

              File? openFile(PlatformFile data) {
                if (kIsWeb) {
                  return null;
                } else {
                  return (data.extension != 'pdf')
                      ? File(data.path.toString())
                      : null;
                }
              }

              return state.whenOrNull(
                    loading: () => const LoadingScreen(),
                    failure: (e) => FailureScreen(e),
                    success: () => const SuccessPage(),
                  ) ??
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Form(
                        key: formGlobalKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //* Document Image
                            Center(
                              child: state.whenOrNull(
                                documentLoading: () => Stack(
                                  alignment: Alignment.center,
                                  children: const [
                                    CustomImage(
                                      width: 200,
                                      height: 200,
                                      disableImage: true,
                                    ),
                                    CircularProgressIndicator()
                                  ],
                                ),
                                documentSuccess: (data) {
                                  if (data.extension == 'pdf') {
                                    return PdfImage(
                                      data,
                                      getImage: (image) {
                                        documentImage = image;
                                      },
                                    );
                                  } else {
                                    return CustomImage(
                                      file: openFile(data),
                                      width: 200,
                                      height: 200,
                                    );
                                  }
                                },
                              ),
                            ),
                            const SizedBox(height: 8),
                            //* Upload Button
                            Center(
                              child: CustomButton(
                                onPressed: () => context
                                    .read<UploadCubit>()
                                    .uploadDocument(),
                                text: buttonText,
                                width: buttonWidth,
                              ),
                            ),
                            //* File
                            if (!kIsWeb)
                              AnimatedSwitcher(
                                switchInCurve: Curves.easeIn,
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                child: state.whenOrNull(
                                      documentSuccess: (data) => Center(
                                        child: CustomButton.secondary(
                                          constraints: const BoxConstraints(
                                            maxWidth: 150,
                                            minWidth: 100,
                                          ),
                                          text: data.name,
                                          overflow: TextOverflow.ellipsis,
                                          onPressed: () => cubit.openFile(),
                                        ),
                                      ),
                                      documentFailure: (e) => FailureScreen(e),
                                    ) ??
                                    const SizedBox(),
                              ),
                            //* Error formfield
                            FormField<String>(
                              validator: (_) => nullCheckTextValidation(
                                cubit.pickedFile?.path,
                                'File',
                              ),
                              builder: (state) {
                                return (state.hasError &&
                                        state.errorText != null)
                                    ? Text(
                                        state.errorText!,
                                        style: errorStyle,
                                      )
                                    : const SizedBox();
                              },
                            ),
                            const SizedBox(height: 16),
                            //* Body
                            ...body,
                            const SizedBox(height: 16),
                            //* Submit Button
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: CustomButton(
                                text: submit,
                                width: 130,
                                onPressed: () {
                                  if (formGlobalKey.currentState!.validate()) {
                                    onPressed(cubit, documentImage);
                                  }
                                },
                              ),
                            ),
                            const SizedBox(height: 16),
                            state.whenOrNull(
                                  failure: (e) => FailureScreen(e),
                                ) ??
                                const SizedBox()
                          ],
                        ),
                      ),
                    ),
                  );
            },
          ),
        ),
      ),
    );
  }
}

class PdfImage extends StatelessWidget {
  const PdfImage(this.data, {super.key, required this.getImage});
  final PlatformFile data;
  final Function(File image) getImage;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PdfToImgCubit(data),
      child: BlocBuilder<PdfToImgCubit, PdfToImgState>(
        builder: (context, state) {
          return state.when(
            loading: () => const LoadingScreen(),
            failure: (e) => FailureScreen(e),
            success: (data) {
              getImage.call(data);
              return CustomImage(
                file: data,
                height: 200,
                width: 142,
                radius: 8,
                isBorder: true,
              );
            },
          );
        },
      ),
    );
  }
}
