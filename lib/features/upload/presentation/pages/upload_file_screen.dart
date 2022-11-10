import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/upload_screen_widget.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../helper/input_validation.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/edit_tags_widget.dart';

class UploadFileScreen extends StatelessWidget with InputValidationMixin {
  const UploadFileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextEditingController titleController = TextEditingController();
    TextEditingController subjectController = TextEditingController();
    TextEditingController yearController = TextEditingController();
    TextEditingController collegeController = TextEditingController();
    TextEditingController semesterController = TextEditingController();
    TextEditingController linkController = TextEditingController();
    List<String> tagsController = [];
    return UploadScreenWidget(
      title: uploadFile,
      body: [
        //* Title
        Text(title, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: titleController,
          hintText: title,
          validator: (value) => nullCheckTextValidation(
            value,
            title,
          ),
        ),
        const SizedBox(height: 16),
        //* Subject
        Text(subject, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: subjectController,
          hintText: subject,
          validator: (value) => nullCheckTextValidation(
            value,
            subject,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //* Year
            CustomDropdown(
              width: 100,
              list: yearList,
              hintText: year,
              controller: yearController,
              validator: (value) => nullCheckTextValidation(
                value,
                year,
              ),
            ),
            //* Semester
            CustomDropdown(
              width: 130,
              hintText: semester,
              list: semesterList,
              controller: semesterController,
              validator: (value) => nullCheckTextValidation(
                value,
                semester,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        //* College
        Text(college, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        CustomDropdown(
          hintText: college,
          list: collegeList,
          controller: collegeController,
          validator: (value) => nullCheckTextValidation(
            value,
            college,
          ),
        ),
        const SizedBox(height: 16),
        //* Tags
        Text(tags, style: theme.textTheme.titleLarge),
        const SizedBox(height: 8),
        EditTagsWidget(
          listTags: (value) => tagsController = value,
          validator: (_) => emptyListCheckValidation(
            tagsController,
            tags,
          ),
        ),
      ],
      onPressed: (cubit) {
        cubit.uploadFile(
          title: title,
          subject: subjectController.text,
          college: collegeController.text,
          semester: semesterController.text,
          tags: tagsController,
        );
      },
    );
  }
}
