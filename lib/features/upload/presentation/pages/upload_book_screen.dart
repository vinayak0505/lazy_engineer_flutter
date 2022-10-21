import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/images.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_image.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/tags/ui/tags_widget.dart';
import '../cubit/upload_cubit.dart';

class UploadBookScreen extends StatelessWidget {
  const UploadBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<String> listTags = [];
    TextEditingController titleController = TextEditingController();
    TextEditingController writterController = TextEditingController();
    TextEditingController aboutController = TextEditingController();
    TextEditingController yearController = TextEditingController();
    TextEditingController universityController = TextEditingController();

    return Scaffold(
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
                        child: CustomImage(image: AppImages.book),
                      ),
                      const SizedBox(height: 16),
                      Text(title, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: titleController,
                        hintText: title,
                      ),
                      const SizedBox(height: 16),
                      Text(writter, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: writterController,
                        hintText: subject,
                      ),
                      const SizedBox(height: 16),
                      Text(about, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 12),
                      CustomTextField.multiLine(
                        controller: aboutController,
                        hintText: aboutBook,
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: 100,
                        child: CustomDropdown(
                          list: yearList,
                          hintText: 'Year',
                          controller: yearController,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(filter, style: theme.textTheme.titleLarge),
                      // FilterContainer.multiOption(data: filterBookList),
                      const SizedBox(height: 16),
                      Text(tags, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 8),
                      TagsWidget(listTags: (value) {
                        listTags = value;
                      }),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                          text: uploadBook,
                          width: 130,
                          onPressed: () {
                            context.read<UploadCubit>().uploadBook(
                                  title: titleController.text,
                                  about: aboutController.text,
                                  writter: writterController.text,
                                  filterMultiOption: [],
                                  tags: listTags,
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
