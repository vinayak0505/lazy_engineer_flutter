import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';

class UploadView extends StatelessWidget {
  const UploadView(this.data, {super.key});
  final UserUploads data;
  @override
  Widget build(BuildContext context) {
    final List<String> uploadHeading = [notes, files, paper, book, jobRequest];
    final List<String> uploadValue = [
      data.notes.toString(),
      data.file.toString(),
      data.paper.toString(),
      data.book.toString(),
      data.jobRequest.toString(),
    ];
    final theme = Theme.of(context);
    return Table(children: [
      TableRow(
        children: uploadValue
            .map((value) => TableCell(
                  child: Text(
                    value,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),)
            .toList(),
      ),
      TableRow(
        children: uploadHeading
            .map((value) => TableCell(
                  child: Text(
                    value,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),)
            .toList(),
      ),
    ],);
  }
}
