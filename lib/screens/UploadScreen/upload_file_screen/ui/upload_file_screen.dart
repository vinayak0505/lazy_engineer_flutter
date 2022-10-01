import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/screens/components/custom_button.dart';
import 'package:lazy_engineer/screens/components/custom_chip.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';
import 'package:lazy_engineer/screens/components/filter_container.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/icons.dart';
import '../../../../assets/images.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_icon.dart';

class UploadFileScreen extends StatelessWidget {
  const UploadFileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    TextEditingController titleController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          uploadNotes,
          style: theme.textTheme.headline4,
          textAlign: TextAlign.center,
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const CustomIcon(
            AppIcons.backArrow,
            margin: EdgeInsets.only(left: 16),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomImage(image: AppImages.uploadNotes),
                Text(title, style: theme.textTheme.titleLarge),
                CustomTextField.secondary(
                  controller: titleController,
                  hintText: title,
                ),
                const SizedBox(height: 16),
                Text(about, style: theme.textTheme.titleLarge),
                const SizedBox(height: 4),
                CustomTextField.multiLine(
                  controller: titleController,
                  hintText: aboutNotes,
                ),
                const SizedBox(height: 16),
                Text(filter, style: theme.textTheme.titleLarge),
                const SizedBox(height: 16),
                CustomDropdown(
                    hintText: searchUniversityOptional, list: universityList),
                const SizedBox(height: 16),
                FilterContainer.multiOption(data: filterNotesList),
                const SizedBox(height: 16),
                Text(tags, style: theme.textTheme.titleLarge),
                const SizedBox(height: 8),
                Wrap(direction: Axis.horizontal, children: [
                  ...List.generate(
                    tagList.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: CustomChip(text: tagList[index]),
                      );
                    },
                  ),
                  CustomChip.addTags(),
                ]),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(
                      text: uploadNotes, onPressed: () {}, width: 130),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
