import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/components/show_tags_widget.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:lazy_engineer/features/notes/presentation/cubit/notes_detail_cubit/notes_detail_cubit.dart';

class NotesDetailScreen extends StatelessWidget {
  const NotesDetailScreen(this.data, {super.key});
  final NoteDetail data;

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
                NotesDetailHeader(
                  title: data.title ?? '',
                  subject: data.subject,
                  link: data.mediaLink ?? '',
                  // rating: rating,
                ),
                const SizedBox(height: 16),
                Text(
                  about,
                  style: theme.textTheme.headline5,
                ),
                const SizedBox(height: 12),
                if (data.about != null) ...[
                  Text(
                    data.about!,
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 16),
                ],
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  defaultColumnWidth: const IntrinsicColumnWidth(flex: 4.0),
                  children: [
                    if (data.semester != null)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              semester,
                              style: theme.textTheme.headline5,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              '${addOrdinals(int.parse(data.semester ?? ''))} Semester',
                              style: theme.textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    if (data.unit != null)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              unit,
                              style: theme.textTheme.headline5,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'Unit - ${data.unit}',
                              style: theme.textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    if (data.chapter != null)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              chapter,
                              style: theme.textTheme.headline5,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              data.chapter!,
                              style: theme.textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    if (data.topic != null)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              topic,
                              style: theme.textTheme.headline5,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              data.topic!,
                              style: theme.textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(tags, style: theme.textTheme.headline5),
                const SizedBox(height: 12),
                ShowTagsWidget(data.tags ?? [])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotesDetailHeader extends StatelessWidget {
  const NotesDetailHeader({
    super.key,
    required this.title,
    this.subject,
    required this.link,
    this.rating,
  });
  final String title;
  final String? subject;
  final String link;
  final bool? rating;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: Check whether after addition of Image from Postman UI working right or not.
          //  CustomImage(
          //    image: link,
          //    radius: kRoundedRectangleRadius,
          //    height: 180,
          //  ),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.headline5,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                if (subject != null) ...[
                  Text(subject!, style: theme.textTheme.titleLarge),
                  const SizedBox(height: 16),
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<NotesDetailCubit>().like();
                      },
                      icon: rating ?? false
                          ? const CustomIcon(AppIcons.likeIcon)
                          : const CustomIcon(AppIcons.likeIcon),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<NotesDetailCubit>().dislike();
                      },
                      icon: rating ?? true
                          ? const CustomIcon(AppIcons.dislikeIcon)
                          : const CustomIcon(AppIcons.dislikeIcon),
                    ),
                    Column(
                      children: [
                        const CustomIcon(AppIcons.bookIcon),
                        Text(
                          pdf,
                          style: theme.textTheme.bodyText1,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const CustomIcon(
                          AppIcons.pageIcon,
                        ),
                        Text(
                          pages,
                          style: theme.textTheme.bodyText1,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Align(
                  child: CustomButton(
                    text: download,
                    onPressed: () {
                      /// context.read<DownloadCubit>().download(link);
                    },
                    width: 120,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
