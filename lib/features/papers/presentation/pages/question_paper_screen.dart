import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/navigation/routes.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../components/custom_icon.dart';
import '../../../components/tile_view.dart';

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
            child: const CustomIcon(
              AppIcons.backArrow,
              margin: EdgeInsets.only(left: 16),
            ),
          ),
          actions: const [
            CustomIcon(
              AppIcons.filterIcon,
              boxFit: BoxFit.contain,
              margin: EdgeInsets.only(right: 16),
            ),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              CustomTextField(
                controller: searchQuestionPaperController,
                suffixIcon: AppIcons.searchIcon,
              ),
              const SizedBox(height: 16),
              // ListView.separated(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   itemCount: questionPaperList.length,
              //   itemBuilder: (context, index) => TileView(
              //     image: questionPaperList[index].image,
              //     child: QuestionPaperDataBox(
              //       title: questionPaperList[index].title,
              //       descirption: questionPaperList[index].description,
              //       college: questionPaperList[index].college,
              //       subject: questionPaperList[index].subject,
              //       year: questionPaperList[index].year,
              //       type: questionPaperList[index].type,
              //     ),
              //     onPressed: () => context.push(
              //       '${RouteGenerator.questionPaperDescriptionRoute}/${index + 1}',
              //     ),
              //   ),
              //   separatorBuilder: (context, index) => const SizedBox(
              //     height: 8,
              //   ),
              // )
            ]),
          ),
        ),
      ),
    );
  }
}

class QuestionPaperDataBox extends StatelessWidget {
  const QuestionPaperDataBox(
      {Key? key,
      required this.subject,
      required this.college,
      required this.year,
      required this.descirption,
      required this.type,
      required this.title})
      : super(key: key);
  final String title, descirption, subject, type, college;
  final DateTime year;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.headline5,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(descirption,
                  style: theme.textTheme.caption,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: theme.textTheme.bodyMedium,
                  children: <TextSpan>[
                    TextSpan(
                        text: subjectIntended,
                        style: theme.textTheme.subtitle2),
                    TextSpan(text: '$subject\n'),
                    TextSpan(
                        text: typeIntended, style: theme.textTheme.subtitle2),
                    TextSpan(text: '$type\n'),
                    TextSpan(
                        text: collegeIntended,
                        style: theme.textTheme.subtitle2),
                    TextSpan(text: '$college\n'),
                    TextSpan(
                        text: yearIntended, style: theme.textTheme.subtitle2),
                    TextSpan(text: year.year.toString()),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
