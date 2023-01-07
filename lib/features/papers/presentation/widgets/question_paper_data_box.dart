import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';

class QuestionPaperDataBox extends StatelessWidget {
  const QuestionPaperDataBox({
    super.key,
    required this.subject,
    required this.college,
    required this.year,
    required this.descirption,
    required this.type,
    required this.title,
  });
  final String title;
  final String descirption;
  final String subject;
  final String college;
  final String? type;
  final int? year;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.headline5,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Text(
              descirption,
              style: theme.textTheme.caption,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
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
                    text: typeIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: '$type\n'),
                  TextSpan(
                    text: collegeIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: '$college\n'),
                  TextSpan(
                    text: yearIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: year.toString()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
