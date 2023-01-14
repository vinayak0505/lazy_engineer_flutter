import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/components/custom_dropdown.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/edit_tags_widget.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_models.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/upload_screen_widget.dart';
import 'package:lazy_engineer/helper/input_validation.dart';

class UploadNotesScreen extends StatelessWidget with InputValidationMixin {
  const UploadNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleController = TextEditingController();
    final aboutController = TextEditingController();
    final semesterController = TextEditingController();
    final subjectController = TextEditingController();
    final collegeController = TextEditingController();
    final unitController = TextEditingController();
    final chapterController = TextEditingController();
    final TextEditingController topicController = TextEditingController();
    List<String> tagsController = [];
    return UploadScreenWidget(
      title: uploadNotes,
      body: [
        //* Title
        Text(title, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: titleController,
          hintText: title,
          validator: (value) => nullCheckTextValidation(value, title),
        ),
        const SizedBox(height: 16),
        //* About
        Text(about, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        CustomTextField.multiLine(
          controller: aboutController,
          hintText: aboutNotes,
          validator: (value) => nullCheckTextValidation(value, about),
        ),
        const SizedBox(height: 16),
        //* Semester
        Text(semester, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        CustomDropdown(
          list: semesterList,
          keyList: semesterKeyList,
          width: 130,
          hintText: semester,
          controller: semesterController,
          validator: (value) => nullCheckTextValidation(value, semester),
        ),
        const SizedBox(height: 16),
        //* Subject
        Text(subject, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: subjectController,
          hintText: subject,
          validator: (value) => nullCheckTextValidation(value, subject),
        ),
        const SizedBox(height: 16),
        //* College
        Text(college, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: collegeController,
          hintText: college,
          validator: (value) => nullCheckTextValidation(value, college),
        ),
        const SizedBox(height: 16),
        //* Unit
        Text(unit, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        CustomDropdown(
          list: unitList,
          keyList: unitKeyList,
          width: 130,
          hintText: unit,
          controller: unitController,
          validator: (value) => nullCheckTextValidation(value, unit),
        ),
        const SizedBox(height: 16),
        //* Chapter
        Text(chapter, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: chapterController,
          hintText: chapter,
          validator: (value) => nullCheckTextValidation(value, chapter),
        ),
        const SizedBox(height: 16),
        //* Topic
        Text(topic, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: topicController,
          hintText: topic,
          validator: (value) => nullCheckTextValidation(value, topic),
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
        cubit.uploadNotes(
          UploadNotesRequest(
            title: titleController.text,
            about: aboutController.text,
            semester: semesterController.text,
            subject: subjectController.text,
            unit: unitController.text,
            chapter: chapterController.text,
            topic: topicController.text,
            tags: tagsController,
          ),
          image,
        );
      },
    );
  }
}
