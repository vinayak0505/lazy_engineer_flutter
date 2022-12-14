import 'dart:io';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository_impl.dart';
import 'package:open_app_file/open_app_file.dart';
import '../../../../assets/constants/decoration.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../../helper/input_validation.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_image.dart';
import '../../../components/failiure_screen.dart';
import '../cubit/upload_cubit.dart';

class UploadScreenWidget extends StatelessWidget with InputValidationMixin {
  const UploadScreenWidget({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.body,
  }) : super(key: key);
  final void Function(UploadCubit) onPressed;
  final String title;
  final List<Widget> body;

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    ThemeData theme = Theme.of(context);

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
              var cubit = context.read<UploadCubit>();
              File? uploadFile() {
                if (cubit.pickedFile != null &&
                    cubit.pickedFile!.extension != 'pdf') {
                  return File(
                    cubit.pickedFile!.path.toString(),
                  );
                }
                return null;
              }

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
                                  children: [
                                    CustomImage(
                                      width: 200,
                                      height: 200,
                                      file: uploadFile(),
                                      disableImage: true,
                                    ),
                                    const CircularProgressIndicator()
                                  ],
                                ),
                                documentSuccess: (data) => CustomImage(
                                  file: openFile(data),
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            //* Upload Button
                            Center(
                              child: CustomButton(
                                onPressed: () => context
                                    .read<UploadCubit>()
                                    .uploadDocument(),
                                text: upload,
                                width: 100,
                              ),
                            ),
                            //* File
                            if(!kIsWeb)
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
                                  cubit.pickedFile?.path, 'File'),
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
                                    onPressed(cubit);
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
