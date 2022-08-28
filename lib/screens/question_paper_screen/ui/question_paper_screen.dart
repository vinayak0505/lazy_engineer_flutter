import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';

import '../../../assets/constants/strings.dart';
import '../../../assets/icons.dart';
import '../../components/custom_image.dart';

class QuestionPaperScreen extends StatelessWidget {
  const QuestionPaperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchQuestionPaperController =
        TextEditingController();
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
              questionPaper,
              style: theme.textTheme.headline5,
              textAlign: TextAlign.center,
            )),
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const CustomImage(
                AppIcons.backArrow,
                margin: EdgeInsets.only(left: 16),
              ),
            ),
            actions: const [
              CustomImage(
                AppIcons.filterIcon,
                boxFit: BoxFit.contain,
                margin: EdgeInsets.only(right: 16),
              ),
            ]),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomTextField(controller: searchQuestionPaperController, suffixIcon: AppIcons.searchIcon,)
              ],
            ),
          )),
        ));
  }
}
