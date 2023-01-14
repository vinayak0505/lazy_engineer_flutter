import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/components/custom_dropdown.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/edit_tags_widget.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_files_request/upload_files_request.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/upload_screen_widget.dart';
import 'package:lazy_engineer/helper/input_validation.dart';

class UploadFileScreen extends StatelessWidget with InputValidationMixin {
  const UploadFileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final titleController = TextEditingController();
    final aboutController = TextEditingController();
    final subjectController = TextEditingController();
    final collegeController = TextEditingController();
    final semesterController = TextEditingController();
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
      onPressed: (cubit, image) {
        cubit.uploadFile(
          UploadFilesRequest(
            title: titleController.text,
            about: aboutController.text,
            subject: subjectController.text,
            college: collegeController.text,
            semester: semesterController.text,
            tags: tagsController,
          ),
          image,
        );
      },
    );
  }
}
