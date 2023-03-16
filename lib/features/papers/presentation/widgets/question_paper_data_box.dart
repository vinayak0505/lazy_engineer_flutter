import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';

class QuestionPaperDataBox extends StatelessWidget {
  const QuestionPaperDataBox(this.paperDetail, {super.key});
  final PaperDetail paperDetail;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              paperDetail.title ?? '',
              style: theme.textTheme.headlineSmall,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              defaultColumnWidth: const IntrinsicColumnWidth(flex: 4.0),
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        subject,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Text(
                        paperDetail.subject ?? '',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        topic,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Text(
                        paperDetail.topic ?? '',
                        style: theme.textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        unit,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Text(
                        'Unit - ${paperDetail.unit}',
                        style: theme.textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
