import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';

class FileDataBox extends StatelessWidget {
  const FileDataBox({
    super.key,
    required this.subject,
    required this.college,
    required this.title,
    required this.year,
  });
  final String title;
  final String subject;
  final String college;
  final DateTime year;
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
              style: theme.textTheme.headline5
                  ?.copyWith(overflow: TextOverflow.ellipsis),
            ),
            const SizedBox(height: 4),
            RichText(
              text: TextSpan(
                style: theme.textTheme.bodyMedium,
                children: <TextSpan>[
                  TextSpan(
                    text: subjectIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: '$subject\n'),
                  TextSpan(
                    text: collegeIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: '$college\n'),
                  TextSpan(
                    text: yearIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: year.year.toString()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
