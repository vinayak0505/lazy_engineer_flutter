import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/edit_tags_widget.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/presentation/widgets/question_paper_detail_header.dart';

class PaperDetailScreen extends StatelessWidget {
  const PaperDetailScreen(this.data, {super.key});
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
                PapersDetailHeader(
                  title: data.title ?? '',
                  userId: data.userId ?? '',
                  subject: data.subject,
                  link: data.mediaLink ?? '',
                ),
                const SizedBox(height: 16),
                Text(
                  description,
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
                // Row(children: [
                //   Text(college, style: theme.textTheme.headlineSmall),
                //   const SizedBox(width: 100),
                //   Text(data., style: theme.textTheme.bodyText2),
                // ],),
                Row(
                  children: [
                    Text(semester, style: theme.textTheme.headlineSmall),
                    const SizedBox(width: 80),
                    Text(data.semester ?? '', style: theme.textTheme.bodyText2),
                  ],
                ),
                const SizedBox(height: 16),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  defaultColumnWidth: const IntrinsicColumnWidth(flex: 4.0),
                  children: [
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
