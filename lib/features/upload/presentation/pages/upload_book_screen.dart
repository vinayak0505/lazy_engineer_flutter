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
import '../../../components/tags/ui/tags_widget.dart';
import '../cubit/upload_cubit.dart';

class UploadBookScreen extends StatelessWidget with InputValidationMixin {
  const UploadBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    List<String> listTags = [];

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
        body: BlocProvider(
          create: (context) => UploadCubit(UploadRepository()),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                  //* title
                  Text(title, style: theme.textTheme.titleLarge),
                  CustomTextField.secondary(
                    controller: titleController,
                    hintText: title,
                  ),
                  const SizedBox(height: 16),
                  //* writer
                  Text(writer, style: theme.textTheme.titleLarge),
                  WriterListWidget(writerList: (value) {
                    writerController = value;
                  }),
                  const SizedBox(height: 16),
                  //* subject
                  Text(subject, style: theme.textTheme.titleLarge),
                  CustomTextField.secondary(
                    controller: subjectController,
                    hintText: subject,
                  ),
                  const SizedBox(height: 16),
                  //* about
                  Text(about, style: theme.textTheme.titleLarge),
                  const SizedBox(height: 12),
                  CustomTextField.multiLine(
                    controller: aboutController,
                    hintText: aboutBook,
                  ),
                  const SizedBox(height: 16),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //* pages
                        CustomTextField(
                          controller: pagesController,
                          keyboardType: TextInputType.number,
                          hintText: pages,
                          width: 100,
                        ),
                        //* semister
                        CustomDropdown(
                          list: semisterList,
                          keyList: semisterKeyList,
                          width: 130,
                          hintText: semister,
                          controller: semisterController,
                        ),
                      ]),
                  const SizedBox(height: 16),
                  //* bookEdition
                  Text(
                    bookEdition,
                    style: theme.textTheme.titleLarge,
                  ),
                  CustomTextField.secondary(
                    controller: bookEditionController,
                    hintText: bookEdition,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 16),
                  //* price
                  Text(price, style: theme.textTheme.titleLarge),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextField.secondary(
                        controller: priceController,
                        hintText: price,
                        width: 100,
                        keyboardType: TextInputType.number,
                      ),
                      Text(
                        rs,
                        style: theme.textTheme.titleLarge,
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  //* tags
                  Text(tags, style: theme.textTheme.titleLarge),
                  const SizedBox(height: 8),
                  TagsWidget(listTags: (value) {
                    listTags = value;
                  }),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButton(
                      text: submit,
                      width: 130,
                      onPressed: () {
                        // context.read<UploadCubit>().uploadBook(
                        //       title: title,
                        //       writer: writerController,
                        //       subject: subjectController.text,
                        //       about: aboutController.text,
                        //       pages: int.parse(pagesController.text),
                        //       semister: int.parse(
                        //         semisterController.text,
                        //       ),
                        //       bookEdition: int.parse(
                        //         bookEditionController.text,
                        //       ),
                        //       price: int.parse(priceController.text),
                        //       rating: ratingController,
                        //       tags: listTags,
                        //     );
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

class WriterListWidget extends StatefulWidget {
  const WriterListWidget({super.key, required this.writerList});
  final void Function(List<String>)? writerList;

  @override
  State<WriterListWidget> createState() => _WriterListWidgetState();
}

class _WriterListWidgetState extends State<WriterListWidget> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    List<String> list = [];
    return Column(
      children: [
        CustomTextField.secondary(
          controller: controller,
          hintText: writer,
          onSubitted: (value) {
            setState(() {
              list.add(value);
            });
            controller.clear();
          },
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) => ListTile(
            dense: true,
            title: Text(list[index]),
          ),
          separatorBuilder: (_, __) => const Divider(),
        ),
      ],
    );
  }
}
