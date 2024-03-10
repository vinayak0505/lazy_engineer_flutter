import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/file/data/repositories/files_repository_impl.dart';
import 'package:lazy_engineer/features/file/presentation/cubit/files_detail_cubit/files_detail_cubit.dart';

class FilesDetailHeader extends StatelessWidget {
  const FilesDetailHeader({
    super.key,
    required this.title,
    required this.userId,
    required this.semesterValue,
    required this.file,
    required this.image,
  });
  final String title;
  final String userId;
  final String semesterValue;
  final String file;
  final String image;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: BlocProvider(
        create: (context) =>
            FilesDetailCubit(FilesRepositoryImpl(), userId, file),
        child: BlocBuilder<FilesDetailCubit, FilesDetailState>(
          builder: (context, state) {
            final read = context.read<FilesDetailCubit>();
            final watch = context.watch<FilesDetailCubit>();
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage(
                  networkImage: image,
                  placeHolder: AppImages.practicleFileImage,
                  radius: kRoundedRectangleRadius,
                  width: 130,
                  height: 180,
                  isBorder: true,
                  color: Colors.grey.shade100,
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 16),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      // IconButton(
                      //   onPressed: () => read.like(),
                      //   icon: watch.rating ?? false
                      //       ? const CustomIcon(
                      //           AppIcons.likeIcon,
                      //           height: 26,
                      //           width: 26,
                      //         )
                      //       : const CustomIcon(
                      //           AppIcons.closeIcon,
                      //           height: 26,
                      //           width: 26,
                      //         ),
                      // ),
                      // IconButton(
                      //   onPressed: () => read.dislike(),
                      //   icon: watch.rating ?? true
                      //       ? const CustomIcon(
                      //           AppIcons.closeIcon,
                      //           height: 26,
                      //           width: 26,
                      //         )
                      //       : const CustomIcon(
                      //           AppIcons.dislikeIcon,
                      //           height: 26,
                      //           width: 26,
                      //         ),
                      // ),
                      //     Column(
                      //       children: [
                      //         const CustomIcon(
                      //           AppIcons.bookIcon,
                      //           height: 22,
                      //           width: 22,
                      //         ),
                      //         Text(pdf, style: theme.textTheme.bodyText1)
                      //       ],
                      //     ),
                      //     Column(
                      //       children: [
                      //         const CustomIcon(
                      //           AppIcons.pageIcon,
                      //           height: 22,
                      //           width: 22,
                      //         ),
                      //         Text(pages, style: theme.textTheme.bodyText1)
                      //       ],
                      //     )
                      //   ],
                      // ),
                      Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        defaultColumnWidth:
                            const IntrinsicColumnWidth(flex: 4.0),
                        children: [
                          TableRow(
                            children: [
                              Text(
                                'Semester: ',
                                style: theme.textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${addOrdinals(int.parse(semesterValue))} Semester',
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: CustomButton(
                          text: download,
                          onPressed: () => read.download(file),
                          width: 120,
                        ),
                      ),
                      if (context.watch<FilesDetailCubit>().isDownloaded !=
                          null)
                        Center(
                          child: Text(
                            watch.isDownloaded!
                                ? 'File is Downloaded'
                                : 'File is not Downloaded',
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
