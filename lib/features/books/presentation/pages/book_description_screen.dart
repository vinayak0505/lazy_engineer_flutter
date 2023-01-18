import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomImage(
                        image: AppImages.bookCoverImage,
                        radius: kRoundedRectangleRadius,
                        height: 180,
                      ),
                      const SizedBox(width: 16),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Text(
                              data?.title ?? '',
                              style: theme.textTheme.headline5,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              data?.title ?? '',
                              style: theme.textTheme.titleLarge,
                            ),
                            const SizedBox(height: 16),
                            bookBottom(theme.textTheme.bodyText1),
                            const SizedBox(height: 16),
                            Align(
                              child: CustomButton(
                                text: download,
                                onPressed: () {},
                                width: 120,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
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

  Widget bookBottom(TextStyle? textStyle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const CustomIcon(AppIcons.likeIcon, width: 18),
            Text('Like', style: textStyle)
          ],
        ),
        Column(
          children: [
            const CustomIcon(AppIcons.dislikeIcon, width: 18),
            Text('Dislike', style: textStyle)
          ],
        ),
        Column(
          children: [
            const CustomIcon(AppIcons.bookIcon),
            Text('E-Book', style: textStyle)
          ],
        ),
        Column(
          children: [
            const CustomIcon(AppIcons.pageIcon),
            Text('pages', style: textStyle)
          ],
        )
      ],
    );
  }
}
