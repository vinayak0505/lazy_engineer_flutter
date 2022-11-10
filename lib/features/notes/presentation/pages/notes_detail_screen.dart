import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/core/logic/download/download_cubit.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/edit_tags_widget.dart';
import 'package:lazy_engineer/features/notes/presentation/cubit/notes_detail_cubit/notes_detail_cubit.dart';
import '../../../../assets/icons.dart';
import '../../../components/custom_icon.dart';
import '../../../components/show_tags_widget.dart';
import '../../data/repositories/notes_repository_impl.dart';

class NotesDetailScreen extends StatelessWidget {
  const NotesDetailScreen({Key? key, this.id}) : super(key: key);
  final String? id;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    String addOrdinals(int num) {
      String ans = num.toString();
      switch (num) {
        case 1:
          return '${ans}st';
        case 2:
          return '${ans}nd';
        case 3:
          return '${ans}rd';
        default:
          return '${ans}th';
      }
    }

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
            child: BlocProvider(
              create: (context) =>
                  NotesDetailCubit(NotesRepositoryImpl(), id ?? ''),
              child: BlocBuilder<NotesDetailCubit, NotesDetailState>(
                  builder: (context, state) {
                return state.when(
                  loading: () => const LoadingScreen(),
                  failure: (error) => FailureScreen(error),
                  success: (data, rating) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocProvider(
                          create: (context) => DownloadCubit(),
                          child: NotesDetailHeader(
                            title: data.title,
                            subject: data.subject,
                            link: data.link,
                            rating: rating,
                          ),
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
                          children: [
                            if (data.unit != null)
                              TableRow(children: [
                                Text(
                                  unit,
                                  style: theme.textTheme.headline6,
                                ),
                                Text(
                                  'Unit - ${data.unit}',
                                  style: theme.textTheme.bodyText2,
                                )
                              ]),
                            if (data.semister != null)
                              TableRow(children: [
                                Text(
                                  semister,
                                  style: theme.textTheme.headline6,
                                ),
                                Text(
                                  '${addOrdinals(data.semister!)} Semester',
                                  style: theme.textTheme.bodyText2,
                                )
                              ]),
                            if (data.chapter != null)
                              TableRow(children: [
                                Text(
                                  chapter,
                                  style: theme.textTheme.headline6,
                                ),
                                Text(
                                  data.chapter!,
                                  style: theme.textTheme.bodyText2,
                                )
                              ]),
                            if (data.topic != null)
                              TableRow(children: [
                                Text(
                                  topic,
                                  style: theme.textTheme.headline6,
                                ),
                                Text(
                                  data.topic!,
                                  style: theme.textTheme.bodyText2,
                                )
                              ]),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(tags, style: theme.textTheme.headlineSmall),
                        const SizedBox(height: 12),
                        ShowTagsWidget(data.tags)
                      ],
                    );
                  },
                );
              }),
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
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImage(
            image: link,
            radius: kRoundedRectangleRadius,
            height: 180,
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
                        Column(children: [
                          const CustomIcon(AppIcons.bookIcon),
                          Text(
                            pdf,
                            style: theme.textTheme.bodyText1,
                          )
                        ]),
                        Column(children: [
                          const CustomIcon(
                            AppIcons.pageIcon,
                          ),
                          Text(
                            pages,
                            style: theme.textTheme.bodyText1,
                          )
                        ])
                      ]),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      text: download,
                      onPressed: () {
                        context.read<DownloadCubit>().download(link);
                      },
                      width: 120,
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
