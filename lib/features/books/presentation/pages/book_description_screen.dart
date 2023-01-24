import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/features/books/presentation/widgets/book_detail_header.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/show_tags_widget.dart';

class BookDescriptionScreen extends StatelessWidget {
  const BookDescriptionScreen(this.data, {super.key});
  final BookDetail? data;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final String writerString =
        data?.writer != null ? data!.writer.toString() : '   ';
    final String allWriters =
        writerString.substring(1, writerString.length - 1);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const CustomIcon(
            AppIcons.backArrow,
            margin: EdgeInsets.only(left: 16),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BooksDetailHeader(
                  title: data?.title ?? '',
                  userId: data?.userId ?? '',
                  file: workingLink(data?.mediaLink) ?? '',
                  image: workingLink(data?.imageLink) ?? '',
                  pagesValue: data?.pages,
                  bookEditionValue: data?.bookEdition,
                  semesterValue: data?.semester ?? '',
                ),
                const SizedBox(height: 12),
                ShowTagsWidget(data?.tags ?? []),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  defaultColumnWidth: const IntrinsicColumnWidth(flex: 4.0),
                  children: [
                    if (data?.writer != null)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              writers,
                              style: theme.textTheme.headline5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Text(
                              allWriters,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    if (data?.price != null)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              price,
                              style: theme.textTheme.headline5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Text(
                              '₹ ${data?.price}',
                              style: theme.textTheme.bodyMedium,
                            ),
                          )
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                if (data?.about != null) ...[
                  Text(
                    about,
                    style: theme.textTheme.headline5,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    data?.about ?? '',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
