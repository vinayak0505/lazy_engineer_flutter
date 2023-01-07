import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/components/custom_dropdown.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/edit_tags_widget.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_models.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/upload_screen_widget.dart';
import 'package:lazy_engineer/helper/input_validation.dart';

class UploadPaperScreen extends StatelessWidget with InputValidationMixin {
  const UploadPaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final titleController = TextEditingController();
    final aboutController = TextEditingController();
    final subjectController = TextEditingController();
    final semesterController = TextEditingController();
    final unitController = TextEditingController();
    final chapterController = TextEditingController();
    final topicController = TextEditingController();
    List<String> tagsController = [];
    return UploadScreenWidget(
      title: uploadPaper,
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
        //* About
        Text(about, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        CustomTextField.multiLine(
          controller: aboutController,
          hintText: aboutPaper,
          validator: (value) => nullCheckTextValidation(
            value,
            about,
          ),
        ),
        const SizedBox(height: 16),
        //* Semester
        CustomDropdown(
          width: 120,
          list: semesterList,
          keyList: semesterKeyList,
          hintText: semester,
          controller: semesterController,
          validator: (value) => nullCheckTextValidation(
            value,
            semester,
          ),
        ),
        const SizedBox(height: 16),
        //* Unit
        CustomDropdown(
          width: 120,
          list: unitList,
          keyList: unitKeyList,
          hintText: unit,
          controller: unitController,
          validator: (value) => nullCheckTextValidation(
            value,
            unit,
          ),
        ),
        const SizedBox(height: 16),
        //* Chapter
        CustomTextField.secondary(
          controller: chapterController,
          hintText: chapter,
          validator: (value) => nullCheckTextValidation(
            value,
            chapter,
          ),
        ),
        const SizedBox(height: 16),
        //* Topic
        CustomTextField.secondary(
          controller: topicController,
          hintText: topic,
          validator: (value) => nullCheckTextValidation(
            value,
            topic,
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
        cubit.uploadPaper(
          UploadPaperRequest(
            title: titleController.text,
            about: aboutController.text,
            semester: semesterController.text,
            subject: subjectController.text,
            unit: unitController.text,
            chapter: chapterController.text,
            topic: topicController.text,
            tags: tagsController,
          ),
        );
      },
    );
  }
}
