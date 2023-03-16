import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/core/helper_function.dart';

class FileDataBox extends StatelessWidget {
  const FileDataBox({
    super.key,
    required this.subjectValue,
    required this.collegeValue,
    required this.title,
    required this.semesterValue,
  });
  final String title;
  final String subjectValue;
  final String collegeValue;
  final String semesterValue;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.headlineSmall,
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
                        subjectValue,
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
                        college,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Text(
                        collegeValue,
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
                        semester,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Text(
                        '${addOrdinals(int.parse(semesterValue))} Semester',
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
