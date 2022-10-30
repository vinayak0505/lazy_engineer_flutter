import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_image.dart';
import '../cubit/upload_cubit.dart';

class UploadScreenWidget extends StatelessWidget {
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
          create: (context) => UploadCubit(UploadRepository()),
          child: BlocBuilder<UploadCubit, UploadState>(
            builder: (context, state) {
              return state.whenOrNull(
                    loading: () => const LoadingScreen(),
                  ) ??
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: formGlobalKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: CustomImage(image: AppImages.book),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: CustomButton(
                                onPressed: () => context
                                    .read<UploadCubit>()
                                    .uploadDocument(),
                                text: upload,
                                width: 100,
                              ),
                            ),
                            state.whenOrNull(
                                    documentLoading: () =>
                                        const LoadingScreen(),
                                    documentSuccess: (data) => Align(
                                          alignment: Alignment.center,
                                          child: CustomButton.secondary(
                                            width: 100,
                                            text: 'file1.pdf',
                                            onPressed: () {},
                                          ),
                                        ),
                                    documentFailure: (e) => Text(e)) ??
                                const SizedBox(),
                            const SizedBox(height: 16),
                            ...body,
                            const SizedBox(height: 16),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: CustomButton(
                                text: submit,
                                width: 130,
                                onPressed: () {
                                  if (formGlobalKey.currentState!.validate()) {
                                    onPressed(context.read<UploadCubit>());
                                  }
                                },
                              ),
                            ),
                            state.whenOrNull(
                                  failure: (e) => Text(
                                    e.toString(),
                                    style: TextStyle(
                                      color: theme.errorColor,
                                    ),
                                  ),
                                ) ??
                                const SizedBox(),
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
