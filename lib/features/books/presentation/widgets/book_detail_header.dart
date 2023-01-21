import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/features/books/data/repositories/books_repository_impl.dart';
import 'package:lazy_engineer/features/books/presentation/cubit/books_detail_cubit/books_detail_cubit.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';

class BooksDetailHeader extends StatelessWidget {
  const BooksDetailHeader({
    super.key,
    required this.file,
    required this.title,
    required this.userId,
    this.image,
    required this.semesterValue,
    this.pagesValue,
    required this.bookEditionValue,
  });
  final String title;
  final String userId;
  final String semesterValue;
  final int? pagesValue;
  final int? bookEditionValue;
  final String file;
  final String? image;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: BlocProvider(
        create: (context) =>
            BooksDetailCubit(BooksRepositoryImpl(), userId, file),
        child: BlocBuilder<BooksDetailCubit, BooksDetailState>(
          builder: (context, state) {
            final read = context.read<BooksDetailCubit>();
            final watch = context.watch<BooksDetailCubit>();
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImage(
                      networkImage: image,
                      placeHolder: AppImages.booksImage,
                      height: 180,
                      width: 130,
                      isBorder: true,
                      radius: kRoundedRectangleRadius,
                      color: Colors.grey.shade100,
                    ),
                    Container(
                      decoration:
                          kRoundedContainer.copyWith(color: Colors.blueGrey),
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '$pagesValue pages',
                        style: theme.textTheme.caption?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.headline5,
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
                              )
                            ],
                          ),
                          const TableRow(
                            children: [
                              SizedBox(height: 8),
                              SizedBox(height: 8),
                            ],
                          ),
                          if (bookEditionValue != null)
                            TableRow(
                              children: [
                                Text(
                                  'Book Edition: ',
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${addOrdinals(bookEditionValue!)} Edition',
                                  style: theme.textTheme.titleMedium,
                                )
                              ],
                            )
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
                      if (context.watch<BooksDetailCubit>().isDownloaded !=
                          null)
                        Center(
                          child: Text(
                            watch.isDownloaded!
                                ? 'Book is Downloaded'
                                : 'Book is not Downloaded',
                          ),
                        )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
