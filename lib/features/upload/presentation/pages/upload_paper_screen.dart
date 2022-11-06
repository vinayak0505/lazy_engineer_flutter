import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/upload_screen_widget.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../helper/input_validation.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/tags_widget.dart';

class UploadPaperScreen extends StatelessWidget with InputValidationMixin {
  const UploadPaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextEditingController titleController = TextEditingController();
    TextEditingController subjectController = TextEditingController();
    TextEditingController aboutController = TextEditingController();
    TextEditingController yearController = TextEditingController();
    TextEditingController typeController = TextEditingController();
    bool? solvedController;
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
        //* Year
        Text(year, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        CustomDropdown(
          width: 120,
          list: yearList,
          keyList: yearKeyList,
          hintText: year,
          controller: yearController,
          validator: (value) => nullCheckTextValidation(
            value,
            year,
          ),
        ),
        const SizedBox(height: 16),
        //* Tags
        Text(tags, style: theme.textTheme.titleLarge),
        const SizedBox(height: 8),
        TagsWidget(
          listTags: (value) => tagsController = value,
          validator: (_) => emptyListCheckValidation(
            tagsController,
            tags,
          ),
        ),
      ],
      onPressed: (cubit) {
        cubit.uploadPaper(
          title: title,
          subject: subjectController.text,
          year: int.parse(yearController.text),
          type: typeController.text,
          solved: solvedController,
          tags: tagsController,
        );
      },
    );
  }
}
