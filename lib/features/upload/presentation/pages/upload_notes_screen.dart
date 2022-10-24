import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/icons.dart';
import '../../../../assets/images.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_image.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/tags/ui/tags_widget.dart';
import '../cubit/upload_cubit.dart';

class UploadNotesScreen extends StatelessWidget {
  const UploadNotesScreen({Key? key}) : super(key: key);

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
    return SafeArea(
      child: Scaffold(
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
          create: (context) => UploadCubit(UploadRepository()),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocBuilder<UploadCubit, UploadState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: CustomImage(image: AppImages.uploadNotes),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                          onPressed: (() {}),
                          text: upload,
                          width: 100,
                        ),
                      ),
                      const SizedBox(height: 16),
                      //* Title
                      Text(title, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: titleController,
                        hintText: title,
                      ),
                      const SizedBox(height: 16),
                      //* About
                      Text(about, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 12),
                      CustomTextField.multiLine(
                        controller: aboutController,
                        hintText: aboutNotes,
                      ),
                      const SizedBox(height: 16),
                      //* Semister
                      CustomDropdown(
                          list: semisterList,
                          keyList: semisterKeyList,
                          width: 130,
                          hintText: semister,
                          controller: semisterController,
                        ),
                      const SizedBox(height: 16),
                      //* Subject
                       Text(subject, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: subjectController,
                        hintText: subject,
                      ),
                      const SizedBox(height: 16),
                      //* College
                      Text(college, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: collegeController,
                        hintText: college,
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
                        ),
                      const SizedBox(height: 16),
                      //* Chapter
                      Text(chapter, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: chapterController,
                        hintText: chapter,
                      ),
                      const SizedBox(height: 16),
                      //* Topic
                      Text(topic, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: topicController,
                        hintText: topic,
                      ),
                      const SizedBox(height: 16),
                      //* Tags
                      Text(tags, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 8),
                      TagsWidget(listTags: (value) {
                        tagsController = value;
                      }),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                          text: uploadNotes,
                          width: 130,
                          onPressed: () {
                            context.read<UploadCubit>().uploadNotes(
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
                                rating: ratingController,
                                );
                          },
                        ),
                      ),
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
