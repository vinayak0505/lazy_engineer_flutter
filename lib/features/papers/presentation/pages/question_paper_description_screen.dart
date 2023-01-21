import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/show_tags_widget.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/presentation/widgets/question_paper_detail_header.dart';

class PaperDetailScreen extends StatelessWidget {
  const PaperDetailScreen(this.data, {super.key});
  final PaperDetail? data;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    print('=====================================');
    print(data?.fileLink);
    print(data?.imageLink);
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
                  semesterValue: data?.semester ?? '',
                  unitValue: data?.unit ?? '',
                  file: workingLink(data?.mediaLink) ?? '',
                  image: workingLink(data?.imageLink) ?? '',
                ),
                const SizedBox(height: 12),
                ShowTagsWidget(data?.tags ?? []),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  defaultColumnWidth: const IntrinsicColumnWidth(flex: 4.0),
                  children: [
                    if (data?.subject != null)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              subject,
                              style: theme.textTheme.headline5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Text(
                              data?.subject ?? '',
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    if (data?.chapter != null)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              chapter,
                              style: theme.textTheme.headline5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Text(
                              data?.chapter ?? '',
                              style: theme.textTheme.bodyMedium,
                            ),
                          )
                        ],
                      ),
                    if (data?.topic != null)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              topic,
                              style: theme.textTheme.headline5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Text(
                              data?.topic ?? '',
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
