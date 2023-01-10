import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/edit_tags_widget.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';
import 'package:lazy_engineer/features/file/presentation/widgets/files_detail_header.dart';

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
                FilesDetailHeader(
                  title: data.title ?? '',
                  userId: data.userId ?? '',
                  subject: data.subject,
                  link: data.mediaLink ?? '',
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
                      college,
                      style: theme.textTheme.headlineSmall,
                    ),
                    const SizedBox(width: 100),
                    Text(
                      data.college ?? '',
                      style: theme.textTheme.bodyText1,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(semester, style: theme.textTheme.headlineSmall),
                    const SizedBox(width: 80),
                    //Text(data.semester ?? '', style: theme.textTheme.bodyText2),
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
}
