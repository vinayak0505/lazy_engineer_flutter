import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/components/edit_tags_widget.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';

class FileDetailScreen extends StatelessWidget {
  const FileDetailScreen(this.data, {super.key});
  final FileDetail data;
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
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomImage(
                        image: AppImages.addImage,
                        radius: kRoundedRectangleRadius,
                        height: 180,
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Text(
                              data.title ?? '',
                              style: theme.textTheme.headline5,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              data.subject ?? '',
                              style: theme.textTheme.titleLarge,
                            ),
                            const SizedBox(height: 16),
                            fileBottom(theme.textTheme.bodyText1),
                            const SizedBox(height: 16),
                            CustomButton(
                              text: download,
                              onPressed: () {},
                              width: 120,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Description',
                  style: theme.textTheme.headline5,
                ),
                const SizedBox(height: 16),
                Text(
                  data.about ?? '',
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'College',
                      style: theme.textTheme.headlineSmall,
                    ),
                    const SizedBox(width: 100),
                    Text(
                      data.college ?? '',
                      style: theme.textTheme.bodyText2,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text('Semester', style: theme.textTheme.headlineSmall),
                    const SizedBox(width: 80),
                    Text('3rd Semester', style: theme.textTheme.bodyText2),
                  ],
                ),
                const SizedBox(height: 16),
                Text(tags, style: theme.textTheme.headlineSmall),
                const SizedBox(height: 16),
                EditTagsWidget(
                  listTags: (value) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget fileBottom(TextStyle? textStyle) {
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
            const CustomIcon(
              AppIcons.dislikeIcon,
              width: 18,
            ),
            Text('Dislike', style: textStyle)
          ],
        ),
        Column(
          children: [
            const CustomIcon(AppIcons.bookIcon),
            Text('pdf', style: textStyle)
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
