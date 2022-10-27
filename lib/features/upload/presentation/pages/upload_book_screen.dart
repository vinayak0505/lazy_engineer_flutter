import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../../helper/input_validation.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_image.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/tags_widget.dart';
import '../cubit/upload_cubit.dart';
import '../widgets/writers_list.dart';

class UploadBookScreen extends StatelessWidget {
  const UploadBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UploadCubit(UploadRepository()),
      child: const UploadBookScreenView(),
    );
  }
}

class UploadBookScreenView extends StatelessWidget with InputValidationMixin {
  const UploadBookScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    ThemeData theme = Theme.of(context);
    TextEditingController titleController = TextEditingController();
    List<String> writerController = [];
    TextEditingController subjectController = TextEditingController();
    TextEditingController aboutController = TextEditingController();
    TextEditingController pagesController = TextEditingController();
    TextEditingController semisterController = TextEditingController();
    TextEditingController bookEditionController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    bool? ratingController;
    List<String> tagsController = [];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            uploadBook,
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
        body: SingleChildScrollView(
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
                      onPressed: () {},
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
                    validator: (value) => nullCheckValidation(
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
                    validator: (value) => nullCheckValidation(
                      value,
                      aboutBook,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //* Pages
                        CustomTextField(
                          controller: pagesController,
                          keyboardType: TextInputType.number,
                          hintText: pages,
                          width: 100,
                          validator: (value) => nullCheckValidation(
                            value,
                            pages,
                          ),
                        ),
                        //* Semister
                        CustomDropdown(
                          list: semisterList,
                          keyList: semisterKeyList,
                          width: 130,
                          hintText: semister,
                          controller: semisterController,
                          validator: (value) => nullCheckValidation(
                            value,
                            semister,
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
                    validator: (value) => nullCheckValidation(
                      value,
                      bookEdition,
                    ),
                  ),
                  const SizedBox(height: 16),
                  //* Price
                  Text(price, style: theme.textTheme.titleLarge),
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    CustomTextField.secondary(
                      controller: priceController,
                      hintText: price,
                      width: 100,
                      keyboardType: TextInputType.number,
                      validator: (value) => nullCheckValidation(
                        value,
                        price,
                      ),
                    ),
                    Text(
                      rs,
                      style: theme.textTheme.titleLarge,
                    )
                  ]),
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
                          context.read<UploadCubit>().uploadBook(
                                title: titleController.text,
                                writer: writerController,
                                subject: subjectController.text,
                                about: aboutController.text,
                                pages: int.parse(pagesController.text),
                                semister: int.parse(
                                  semisterController.text,
                                ),
                                bookEdition: int.parse(
                                  bookEditionController.text,
                                ),
                                price: int.parse(priceController.text),
                                rating: ratingController,
                                tags: tagsController,
                              );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
