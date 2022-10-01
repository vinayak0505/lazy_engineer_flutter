import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_screen/logic/upload_cubit.dart';
import 'package:lazy_engineer/screens/components/custom_button.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';
import 'package:lazy_engineer/screens/tags/logic/tags_cubit.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/icons.dart';
import '../../../../assets/images.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_icon.dart';
import '../../../tags/ui/tags_widget.dart';

class UploadNotesScreen extends StatelessWidget {
  const UploadNotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<String> listTags = [];
    TextEditingController titleController = TextEditingController();
    TextEditingController aboutController = TextEditingController();
    TextEditingController universityController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          uploadNotes,
          style: theme.textTheme.headline5,
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const CustomIcon(
            AppIcons.backArrow,
            margin: EdgeInsets.only(left: 16),
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => UploadCubit(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocBuilder<UploadCubit, UploadState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                          child: CustomImage(image: AppImages.uploadNotes)),
                      const SizedBox(height: 16),
                      Text(title, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: titleController,
                        hintText: title,
                      ),
                      const SizedBox(height: 16),
                      Text(about, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 4),
                      CustomTextField.multiLine(
                        controller: aboutController,
                        hintText: aboutNotes,
                      ),
                      const SizedBox(height: 16),
                      Text(filter, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 16),
                      CustomDropdown(
                        hintText: searchUniversityOptional,
                        list: universityList,
                        controller: universityController,
                      ),
                      const SizedBox(height: 16),
                      // FilterContainer.multiOption(data: filterNotesList),
                      const SizedBox(height: 16),
                      Text(tags, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 8),
                      TagsWidget(listTags: (value) {
                        listTags = value;
                      }),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                            text: uploadNotes,
                            onPressed: () {
                              context.read<UploadCubit>().uploadNotes(
                                    title: titleController.text,
                                    about: aboutController.text,
                                    university: universityController.text,
                                    filterMultiOption: [],
                                    tags: listTags,
                                  );
                            },
                            width: 130),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
