import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/papers/presentation/widgets/question_paper_detail_header.dart';

class BookDescriptionScreen extends StatelessWidget {
  const BookDescriptionScreen(this.data, {super.key});
  final BookDetail? data;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
                PapersDetailHeader(
                  title: data?.title ?? '',
                  userId: data?.userId ?? '',
                  //TODO: Add subject in books_response file through postman also. Vinayak forget to add it.
                  //subject: data.subject ?? '',
                  link: data?.mediaLink ?? '',
                ),
                const SizedBox(height: 16),
                Text(
                  'About',
                  style: theme.textTheme.headline5,
                ),
                const SizedBox(height: 16),
                Text(
                  data?.about ?? '',
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text('Writers', style: theme.textTheme.headlineSmall),
                    const SizedBox(width: 80),
                    Wrap(
                      children: data?.writer?.map((p) => Text(p)).toList() ?? [],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(semester, style: theme.textTheme.headlineSmall),
                    const SizedBox(width: 60),
                    Text(data?.semester ?? '', style: theme.textTheme.bodyText2),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text('Book Edition', style: theme.textTheme.headlineSmall),
                    const SizedBox(width: 30),
                    Text(data?.title ?? '', style: theme.textTheme.bodyText2),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text('Price', style: theme.textTheme.headlineSmall),
                    const SizedBox(width: 110),
                    Text(data?.title ?? '', style: theme.textTheme.bodyText2),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
