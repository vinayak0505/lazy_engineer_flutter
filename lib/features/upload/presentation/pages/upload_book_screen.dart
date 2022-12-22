import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/upload_screen_widget.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../helper/input_validation.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/edit_tags_widget.dart';
import '../widgets/writers_list.dart';

class UploadBookScreen extends StatelessWidget with InputValidationMixin {
  const UploadBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextEditingController titleController = TextEditingController();
    List<String> writerController = [];
    TextEditingController subjectController = TextEditingController();
    TextEditingController aboutController = TextEditingController();
    TextEditingController pagesController = TextEditingController();
    TextEditingController semesterController = TextEditingController();
    TextEditingController bookEditionController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    List<String> tagsController = [];
    return UploadScreenWidget(
      title: uploadBook,
      body: [
        // * Title
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
        //* Writer
        Text(writer, style: theme.textTheme.titleLarge),
        WriterListWidget(writerList: (value) {
          writerController = value;
        }),
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
        //* About Book
        Text(about, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        CustomTextField.multiLine(
          controller: aboutController,
          hintText: aboutBook,
          validator: (value) => nullCheckTextValidation(
            value,
            aboutBook,
          ),
        ),
        const SizedBox(height: 16),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //* Pages
          CustomTextField(
            controller: pagesController,
            keyboardType: TextInputType.number,
            hintText: pages,
            width: 100,
            validator: (value) => nullCheckNumValidation(
              value,
              pages,
            ),
          ),
          //* Semester
          CustomDropdown(
            list: semesterList,
            keyList: semesterKeyList,
            width: 130,
            hintText: semester,
            controller: semesterController,
            validator: (value) => nullCheckNumValidation(
              value,
              semester,
            ),
          ),
        ]),
        const SizedBox(height: 16),
        //* BookEdition
        Text(
          bookEdition,
          style: theme.textTheme.titleLarge,
        ),
        CustomTextField.secondary(
          controller: bookEditionController,
          hintText: bookEdition,
          keyboardType: TextInputType.number,
          validator: (value) => nullCheckNumValidation(
            value,
            bookEdition,
          ),
        ),
        const SizedBox(height: 16),
        //* Price
        Text(price, style: theme.textTheme.titleLarge),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField.secondary(
              controller: priceController,
              hintText: price,
              width: 100,
              keyboardType: TextInputType.number,
              validator: (value) => nullCheckNumValidation(
                value,
                price,
              ),
            ),
            Text(
              rs,
              style: theme.textTheme.titleLarge,
            )
          ],
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
        cubit.uploadBook(
          title: titleController.text,
          writer: writerController,
          subject: subjectController.text,
          pages: int.parse(pagesController.text),
          bookEdition: int.parse(bookEditionController.text),
          tags: tagsController,
        );
      },
    );
  }
}
