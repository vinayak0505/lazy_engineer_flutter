import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/components/edit_tags_widget.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';

class PaperDescriptionScreen extends StatelessWidget {
  const PaperDescriptionScreen(this.data, {super.key});
  final PaperDetail data;
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
                  padding: const EdgeInsets.all(8),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomImage(
                          image: AppImages.questionPaper,
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
                                  data.title ?? '',
                                  style: theme.textTheme.headline5,
                                ),
                                const SizedBox(height: 12),
                                Text(data.subject ?? '',
                                    style: theme.textTheme.titleLarge,),
                                const SizedBox(height: 16),
                                const SizedBox(height: 16),
                                Align(
                                  alignment: Alignment.center,
                                  child: CustomButton(
                                    text: download,
                                    onPressed: () {},
                                    width: 120,
                                  ),
                                ),
                                const BottomPage()
                              ],),
                        )
                      ],),
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  style: theme.textTheme.headline5,
                ),
                const SizedBox(height: 16),
                Text(
                 data.about ?? '',
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                // Row(children: [
                //   Text(college, style: theme.textTheme.headlineSmall),
                //   const SizedBox(width: 100),
                //   Text(data., style: theme.textTheme.bodyText2),
                // ],),
                const SizedBox(height: 16),
                Row(children: [
                  Text(semester, style: theme.textTheme.headlineSmall),
                  const SizedBox(width: 80),
                  Text(data.semester ?? '', style: theme.textTheme.bodyText2),
                ],),
                const SizedBox(height: 16),
                Text(tags, style: theme.textTheme.headlineSmall),
                const SizedBox(height: 16),
                EditTagsWidget(listTags: (value) {
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomPage extends StatelessWidget {
  const BottomPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Column(children: [
        const CustomIcon(
          AppIcons.likeIcon,
          height: 16,
          width: 16,
        ),
        Text(
          'Like',
          style: theme.textTheme.bodyText1,
        )
      ],),
      Column(children: [
        const CustomIcon(
          AppIcons.dislikeIcon,
          height: 16,
          width: 16,
        ),
        Text(
          'Dislike',
          style: theme.textTheme.bodyText1,
        )
      ],),
      Column(children: [
        const CustomIcon(AppIcons.bookIcon),
        Text(
          pdf,
          style: theme.textTheme.bodyText1,
        )
      ],),
      Column(children: [
        const CustomIcon(AppIcons.pageIcon),
        Text(
          pages,
          style: theme.textTheme.bodyText1,
        )
      ],)
    ],);
  }
}
