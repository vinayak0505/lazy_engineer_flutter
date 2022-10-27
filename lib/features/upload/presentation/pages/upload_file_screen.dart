import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository.dart';
import 'package:lazy_engineer/helper/input_validation.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_image.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/tags_widget.dart';
import '../cubit/upload_cubit.dart';

class UploadFileScreen extends StatelessWidget with InputValidationMixin {
  const UploadFileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    ThemeData theme = Theme.of(context);
    TextEditingController titleController = TextEditingController();
    TextEditingController subjectController = TextEditingController();
    TextEditingController yearController = TextEditingController();
    TextEditingController collegeController = TextEditingController();
    TextEditingController semisterController = TextEditingController();
    TextEditingController linkController = TextEditingController();
    bool? ratingController;
    List<String> tagsController = [];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            uploadFile,
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
              child: Form(
                key: formGlobalKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: CustomImage(image: AppImages.book),
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
                        validator: (value) => nullCheckValidation(
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
                        validator: (value) => nullCheckValidation(
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
                            validator: (value) => nullCheckValidation(
                              value,
                              year,
                            ),
                          ),
                          //* Semister
                          CustomDropdown(
                            width: 130,
                            hintText: semister,
                            list: semisterList,
                            controller: semisterController,
                            validator: (value) => nullCheckValidation(
                          value,
                          semister,
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
                        validator: (value) => nullCheckValidation(
                          value,
                          college,
                        ),
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
                          text: submit,
                          width: 130,
                          onPressed: () {
                            if (formGlobalKey.currentState!.validate()) {
                              context.read<UploadCubit>().uploadFile(
                                    title: title,
                                    subject: subjectController.text,
                                    college: collegeController.text,
                                    semister: semisterController.text,
                                    link: linkController.text,
                                    tags: tagsController,
                                    rating: ratingController,
                                  );
                            }
                          },
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
