import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/upload_screen_widget.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../helper/input_validation.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/tags_widget.dart';

class UploadNotesScreen extends StatelessWidget with InputValidationMixin {
  const UploadNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextEditingController titleController = TextEditingController();
    TextEditingController aboutController = TextEditingController();
    TextEditingController semisterController = TextEditingController();
    TextEditingController subjectController = TextEditingController();
    TextEditingController collegeController = TextEditingController();
    TextEditingController unitController = TextEditingController();
    TextEditingController chapterController = TextEditingController();
    TextEditingController topicController = TextEditingController();
    TextEditingController linkController = TextEditingController();
    List<String> tagsController = [];
    bool? ratingController;
    return UploadScreenWidget(
      title: uploadNotes,
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
        //* About
        Text(about, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        CustomTextField.multiLine(
          controller: aboutController,
          hintText: aboutNotes,
          validator: (value) => nullCheckTextValidation(
            value,
            about,
          ),
        ),
        const SizedBox(height: 16),
        //* Semister
        CustomDropdown(
          list: semisterList,
          keyList: semisterKeyList,
          width: 130,
          hintText: semister,
          controller: semisterController,
          validator: (value) => nullCheckTextValidation(
            value,
            semister,
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
        //* College
        Text(college, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: collegeController,
          hintText: college,
          validator: (value) => nullCheckTextValidation(
            value,
            college,
          ),
        ),
        const SizedBox(height: 16),
        //* Unit
        Text(unit, style: theme.textTheme.titleLarge),
        CustomDropdown(
          list: unitList,
          keyList: unitKeyList,
          width: 130,
          hintText: unit,
          controller: unitController,
          validator: (value) => nullCheckTextValidation(
            value,
            unit,
          ),
        ),
        const SizedBox(height: 16),
        //* Chapter
        Text(chapter, style: theme.textTheme.titleLarge),
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
        Text(topic, style: theme.textTheme.titleLarge),
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
        TagsWidget(listTags: (value) {
          tagsController = value;
        }),
      ],
      onPressed: (cubit) {
        cubit.uploadNotes(
          title: titleController.text,
          about: aboutController.text,
          semister: int.parse(
            semisterController.text,
          ),
          subject: subjectController.text,
          unit: unitController.text,
          chapter: chapterController.text,
          topic: topicController.text,
          link: linkController.text,
          tags: tagsController,
        );
      },
    );
  }
}
