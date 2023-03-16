import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/show_tags_widget.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:lazy_engineer/features/notes/presentation/widgets/notes_detail_header.dart';

class NotesDetailScreen extends StatelessWidget {
  const NotesDetailScreen(this.data, {super.key});
  final NoteDetail? data;

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
                  title: data?.title ?? '',
                  userId: data?.userId ?? '',
                  semesterValue: data?.semester ?? '',
                  unitValue: data?.unit ?? '',
                  fileLink: workingLink(data?.mediaLink) ?? '',
                  imageLink: workingLink(data?.imageLink) ?? '',
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
                              style: theme.textTheme.headlineSmall,
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
                              style: theme.textTheme.headlineSmall,
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
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                            ),
                            child: Text(
                              topic,
                              style: theme.textTheme.headlineSmall,
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
                    style: theme.textTheme.headlineSmall,
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
