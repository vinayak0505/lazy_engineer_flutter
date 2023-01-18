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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              paperDetail.title ?? '',
              style: theme.textTheme.headline5,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Text(
              paperDetail.about ?? '',
              style: theme.textTheme.caption,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            //TODO: Text Span '/n' not working to start type, college, from next line (UiProblem)
            RichText(
              text: TextSpan(
                style: theme.textTheme.bodyMedium,
                children: <TextSpan>[
                  TextSpan(
                    text: subjectIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: paperDetail.subject ?? '' + '\n'),
                  TextSpan(
                    text: typeIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: paperDetail.topic ?? '' + '\n'),
                  TextSpan(
                    text: collegeIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: paperDetail.unit ?? '' + '\n'),
                  TextSpan(
                    text: yearIntended,
                    style: theme.textTheme.subtitle2,
                  ),
                  TextSpan(text: paperDetail.semester ?? '' + '\n'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
